#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <elf.h>
#include <unistd.h> //for getpagesize
#include <sys/mman.h>
#include <fcntl.h>
#include <errno.h>

#include "Link.h"
#include "LoaderInternal.h"

#define ALIGN_DOWN(base, size) ((base) & -((__typeof__(base))(size)))
#define ALIGN_UP(base, size) ALIGN_DOWN((base) + (size)-1, (size))

static const char *sys_path[] = {
    "/usr/lib/x86_64-linux-gnu/",
    "/lib/x86_64-linux-gnu/",
    ""
};

static const char *fake_so[] = {
    "libc.so.6",
    "ld-linux.so.2",
    ""
};

static void setup_hash(LinkMap *l)
{
    uint32_t *hash;

    /* borrowed from dl-lookup.c:_dl_setup_hash */
    Elf32_Word *hash32 = (Elf32_Word *)l->dynInfo[DT_GNU_HASH]->d_un.d_ptr;
    l->l_nbuckets = *hash32++;
    Elf32_Word symbias = *hash32++;
    Elf32_Word bitmask_nwords = *hash32++;

    l->l_gnu_bitmask_idxbits = bitmask_nwords - 1;
    l->l_gnu_shift = *hash32++;

    l->l_gnu_bitmask = (Elf64_Addr *)hash32;
    hash32 += 64 / 32 * bitmask_nwords;

    l->l_gnu_buckets = hash32;
    hash32 += l->l_nbuckets;
    l->l_gnu_chain_zero = hash32 - symbias;
}

static void fill_info(LinkMap *lib)
{
    Elf64_Dyn *dyn = lib->dyn;
    Elf64_Dyn **dyn_info = lib->dynInfo;

    while (dyn->d_tag != DT_NULL)
    {
        if ((Elf64_Xword)dyn->d_tag < DT_NUM)
            dyn_info[dyn->d_tag] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_RELACOUNT_)
            dyn_info[DT_RELACOUNT] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_GNU_HASH_)
            dyn_info[DT_GNU_HASH] = dyn;
        ++dyn;
    }
#define rebase(tag)                             \
    do                                          \
    {                                           \
        if (dyn_info[tag])                          \
        dyn_info[tag]->d_un.d_ptr += lib->addr; \
    } while (0)
    rebase(DT_SYMTAB);
    rebase(DT_STRTAB);
    rebase(DT_RELA);
    rebase(DT_JMPREL);
    rebase(DT_GNU_HASH); //DT_GNU_HASH
    rebase(DT_PLTGOT);
    rebase(DT_INIT);
    rebase(DT_INIT_ARRAY);
}

void *MapLibrary(const char *libpath)
{
    LinkMap *lib = (LinkMap*)malloc(sizeof(LinkMap));
    lib->name = (char*)malloc(strlen(libpath)+1);
    strcpy((char*)lib->name,libpath);
    int fd = open(libpath, O_RDONLY);
    /* pointer to ELF header */
    Elf64_Ehdr* ELF_header = (Elf64_Ehdr*)malloc(sizeof(Elf64_Ehdr));
    read(fd,(void*)ELF_header, sizeof(Elf64_Ehdr));
    /* set offset to programheader */
    lseek(fd, ELF_header->e_phoff, SEEK_SET);
    /* this is the pointer to programheader */
    Elf64_Phdr* ProgHeader = (Elf64_Phdr*)malloc(sizeof(Elf64_Phdr)); 
    read(fd, (void*)ProgHeader, sizeof(Elf64_Phdr));
    lib->addr = (uint64_t)mmap(NULL, 40960, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if(lib->addr == -1){
        exit(0);
    }
    for(int i = 0; i < ELF_header->e_phnum; i++) {
        if(ProgHeader->p_type == PT_LOAD) {
            int port = 0;
            port |= (ProgHeader->p_flags & PF_R)? PROT_READ:0;
            port |= (ProgHeader->p_flags & PF_W)? PROT_WRITE:0;
            port |= (ProgHeader->p_flags & PF_X)? PROT_EXEC:0;
            uint64_t addr = lib->addr + ProgHeader->p_vaddr;
            addr = ALIGN_DOWN(addr, 4096);
            off_t offset = (off_t)(ProgHeader->p_offset - (ProgHeader->p_vaddr + lib->addr - addr)); 
            size_t size = (size_t)ProgHeader->p_memsz + (size_t)(ProgHeader->p_vaddr + lib->addr - addr);
            void* errortag = mmap((void*)addr, size, port, MAP_PRIVATE|MAP_FIXED, fd, offset); 
            if(errortag == (void*)-1){
                printf("error:%d\n", errno);
                exit(0);
            }
        }
        if(ProgHeader->p_type == PT_DYNAMIC) {
            lib->dyn = (Elf64_Dyn*)(lib->addr + (uint64_t)ProgHeader->p_vaddr);
        }
        read(fd, (void*)ProgHeader, sizeof(Elf64_Phdr));
    }
    for(int i = 0; i < DT_NUM; i++){
        lib->dynInfo[i] = 0;
    }
    fill_info(lib);
    setup_hash(lib);
    if(lib->dynInfo[DT_NEEDED]){
        int symOffset = lib->dynInfo[DT_NEEDED]->d_un.d_val;
        char *Neededlib_name = (char*)(lib->dynInfo[DT_STRTAB]->d_un.d_val + symOffset);
        if(!strcmp(Neededlib_name, "libc.so.6")){
            lib->Needed = (LinkMap*)malloc(sizeof(LinkMap));
            lib->Needed->name = (char*)malloc(strlen(Neededlib_name)+1);
            strcpy((char*)lib->Needed->name, Neededlib_name);
            lib->Needed->fake = 1;
        }
        else{
            char *temp = (char*)malloc(strlen("./test_lib/") + strlen(Neededlib_name) + 1);
            strcpy(temp, "./test_lib/");
            strcat(temp,Neededlib_name);
            Neededlib_name = temp;
            lib->Needed = (LinkMap*)MapLibrary(Neededlib_name); 
        }
    }
    else lib->Needed = NULL;
    free(ProgHeader);
    free(ELF_header);
    return lib;
}
