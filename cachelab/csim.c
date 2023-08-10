#include "cachelab.h"
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
int opt, s = 0, E = 0, b = 0, S = 0, hits = 0, misses = 0, evictions = 0;
char *t = NULL;
typedef unsigned long long int mem_addr_t;
struct cache_line{
    int tag;
    int valid;
    int time;
};
struct cache_line* cache;

int get_time(){
    static int time = 0;
    return time++;
}

void access_cache(int set, int tag,int block, int size){
    for(int i = 0; i < E; i++){
        struct cache_line* curr_cache = &cache[set * E + i];
        if(curr_cache->valid == 0){
            misses+=1;
            curr_cache->valid = 1;
            curr_cache->tag = tag;
            curr_cache->time = get_time();
            return;
        }
        else{
           if(curr_cache->tag == tag){
                hits+=1;
                curr_cache->time = get_time();
                return;
            }
            else if(i == E - 1){
                int min_time = 1000000, min_index = 0;
                for(int j = 0; j < E; j++){
                    if(cache[set * E + j].time < min_time){
                        min_time = cache[set * E + j].time;
                        min_index = set*E+j;
                    }
                }
                cache[min_index].tag = tag;
                cache[min_index].time = get_time();
                evictions+=1;
                misses+=1;
                return;
            }
        }
    }
}
int main(int argc, char **argv){
    while(-1 != (opt = getopt(argc, argv, "s:E:b:t:"))){
        switch(opt){
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                t = (char *)malloc(sizeof(char)*strlen(optarg));
                strcpy(t, optarg);
        }
    }
    S = 1<<s;
    cache = (struct cache_line*)malloc(sizeof(struct cache_line)*S*E);
    //struct cache_line cache[S][E];
    for(int i = 0; i < S; i++){
        for(int j = 0; j < E; j++){
            (cache[i*E+j]).tag = 0;
            (cache[i*E+j]).valid = 0;
            (cache[i*E+j]).time = 0;
        }
    }
    FILE *f;
    f = fopen(t,"r");
    char identifier;
    mem_addr_t adress;
    int size;
    while(fscanf(f," %c %llx,%d",&identifier, &adress, &size)>0){
        int set = ((1<<s)-1)&(adress>>b);
        int tag = adress>>(s+b);
        int block =((1<<b)-1)&adress;
        switch(identifier){
            case 'L':
                access_cache(set, tag, block, size);
                break;
            case 'S':
                access_cache(set, tag, block, size);
                break;
            case 'M':
                access_cache(set, tag, block, size);
                access_cache(set, tag, block, size);
                break;
        }
    }
    printSummary(hits,misses,evictions);
    return 0;
}
