#include <dlfcn.h> //turn to dlsym for help at fake load object
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <elf.h>
#include <link.h>
#include <string.h>

#include "Link.h"

// glibc version to hash a symbol
static uint_fast32_t dl_new_hash(const char *s)
{
    uint_fast32_t h = 5381;
    for (unsigned char c = *s; c != '\0'; c = *++s)
        h = h * 33 + c;
    return h & 0xffffffff;
}

// find symbol `name` inside the symbol table of `dep`
void *symbolLookup(LinkMap *dep, const char *name)
{
    if(dep->fake)
    {
        void *handle = dlopen(dep->name, RTLD_LAZY);
        if(!handle)
        {
            fprintf(stderr, "relocLibrary error: cannot dlopen a fake object named %s", dep->name);
            abort();
        }
        dep->fakeHandle = handle;
        return dlsym(handle, name);
    }

    Elf64_Sym *symtab = (Elf64_Sym *)dep->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    const char *strtab = (const char *)dep->dynInfo[DT_STRTAB]->d_un.d_ptr;

    uint_fast32_t new_hash = dl_new_hash(name);
    Elf64_Sym *sym;
    const Elf64_Addr *bitmask = dep->l_gnu_bitmask;
    uint32_t symidx;
    Elf64_Addr bitmask_word = bitmask[(new_hash / __ELF_NATIVE_CLASS) & dep->l_gnu_bitmask_idxbits];
    unsigned int hashbit1 = new_hash & (__ELF_NATIVE_CLASS - 1);
    unsigned int hashbit2 = ((new_hash >> dep->l_gnu_shift) & (__ELF_NATIVE_CLASS - 1));
    if ((bitmask_word >> hashbit1) & (bitmask_word >> hashbit2) & 1)
    {
        Elf32_Word bucket = dep->l_gnu_buckets[new_hash % dep->l_nbuckets];
        if (bucket != 0)
        {
            const Elf32_Word *hasharr = &dep->l_gnu_chain_zero[bucket];
            do
            {
                if (((*hasharr ^ new_hash) >> 1) == 0)
                {
                    symidx = hasharr - dep->l_gnu_chain_zero;
                    /* now, symtab[symidx] is the current symbol.
                       Hash table has done its job */
                    const char *symname = strtab + symtab[symidx].st_name;
                    if (!strcmp(symname, name))
                    {    
                        Elf64_Sym *s = &symtab[symidx];
                        // return the real address of found symbol
                        return (void *)(s->st_value + dep->addr);
                    }
                }
            } while ((*hasharr++ & 1u) == 0);
        }
    }
    return NULL; //not this dependency
}

void RelocLibrary(LinkMap *lib, int mode)
{
    /* Your code here */
    /* set some pointers */
    Elf64_Dyn *dyn = lib->dyn;
    Elf64_Rela *rela_plt = lib->dynInfo[DT_JMPREL] == 0 ? 0 : (Elf64_Rela*)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
    Elf64_Sym *sym = lib->dynInfo[DT_SYMTAB] == 0 ? 0 : (Elf64_Sym*)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;  
    Elf64_Rela *rela_dyn = lib->dynInfo[DT_RELA] == 0 ? 0 : (Elf64_Rela*)lib->dynInfo[DT_RELA]->d_un.d_ptr;
    uint64_t strtab_addr = lib->dynInfo[DT_STRTAB] == 0 ? 0 : (uint64_t)lib->dynInfo[DT_STRTAB]->d_un.d_val;
    size_t rela_plt_sz = lib->dynInfo[DT_PLTRELSZ] == 0 ? 0 : (size_t)lib->dynInfo[DT_PLTRELSZ]->d_un.d_val,
           rela_dyn_sz = lib->dynInfo[DT_RELASZ] == 0 ? 0 : (size_t)lib->dynInfo[DT_RELASZ]->d_un.d_val, 
           sym_sz = lib->dynInfo[DT_SYMENT] == 0 ? 0 : (size_t)lib->dynInfo[DT_SYMENT]->d_un.d_val;
    size_t rela_dyn_psz = lib->dynInfo[DT_RELAENT] == 0 ? 0 : (size_t)lib->dynInfo[DT_RELAENT]->d_un.d_val;

    /* .rela.plt reposition */
    if(rela_plt){
        size_t rela_plt_num = rela_plt_sz/sizeof(Elf64_Rela);
        for(int i = 0; i < rela_plt_num; i++){
            char *symName = (char*)(lib->dynInfo[DT_STRTAB]->d_un.d_val + (sym + (rela_plt->r_info >> 32))->st_name);
            void *symAddr = NULL;
            LinkMap *templib = lib;
            while(!symAddr && templib){
                symAddr = symbolLookup(templib, symName);
                templib = templib->Needed;
            }
            *(uint64_t*)(lib->addr + rela_plt->r_offset) = (uint64_t)symAddr;
            rela_plt++;
        }
    }

    /* .rela.dyn reposition */
    if(rela_dyn){
        size_t rela_dyn_num = rela_dyn_sz/rela_dyn_psz;
        for(int i = 0; i < rela_dyn_num; i++){
            if((rela_dyn->r_info & 0xffffffff) == R_X86_64_RELATIVE){
                *(uint64_t*)(lib->addr + rela_dyn->r_offset) = lib->addr + rela_dyn->r_addend;
            }
            if((rela_dyn->r_info & 0xffffffff) == R_X86_64_GLOB_DAT){
                Elf64_Sym *globSymbol = sym + (rela_dyn->r_info >> 32);
                if(ELF64_ST_BIND(globSymbol->st_info) != STB_WEAK){
                    char *symName = (char*)(lib->dynInfo[DT_STRTAB]->d_un.d_val + (sym + (rela_dyn->r_info >> 32))->st_name);
                    void *symAddr = NULL;
                    LinkMap *templib = lib;
                    while(!symAddr && templib){
                        symAddr = symbolLookup(templib, symName);
                        templib = templib->Needed;
                    }
                    *(uint64_t*)(lib->addr + rela_dyn->r_offset) = (uint64_t)symAddr;
                }
            }
            rela_dyn++;
        }
    }
    if(lib->Needed){
        RelocLibrary(lib->Needed,mode);
    }
}
