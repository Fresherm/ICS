#include <stdlib.h>
#include <stdio.h>
#include <elf.h>
#include <stdint.h>

#include "Link.h"
#include "LoaderInternal.h"

void InitLibrary(LinkMap *l)
{
   /* Your code here */
    void (*p)() = (void*)l->dynInfo[DT_INIT]->d_un.d_ptr;
    p();
    int size = l->dynInfo[DT_INIT_ARRAYSZ]->d_un.d_val / sizeof(void*);
    void **init_array = (void**)l->dynInfo[DT_INIT_ARRAY]->d_un.d_ptr;
    for(int i = 0; i < size; i++ ){
        p = (void*)*(init_array+i);
        p();
    }

}
