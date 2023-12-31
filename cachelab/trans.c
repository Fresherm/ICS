/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if(M==32){
        int i, j, ti, tj,tmp = 0, flag = 0;
        for(ti = 7; ti < N; ti += 8){
            for(tj = 7; tj < M; tj +=8){
                for(i = ti-7; i <= ti; i++){
                    for(j = tj -7; j <= tj; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }    
                }
            }
        }
    }
    else if(M==64){
        int i, j, ti, tj,tmp = 0, flag = 0;
        for(ti = 7; ti < N; ti += 8){
            for(tj = 7; tj < M; tj += 8){
                //1
                for(i = ti-7; i <= ti-4; i++){
                    for(j = tj -7; j <= tj-4; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }    
                }
                //2
                for(i = ti-7; i <= ti-4; i++){
                    for(j = tj-3; j <= tj; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }  
                }
                //3
                for(i = ti-3; i <= ti; i++){
                    for(j = tj -3; j <= tj; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }    
                }
                //4
                for(i = ti-3; i<=ti; i++){
                    for(j = tj-7; j <= tj-4; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }
                }
            }
        }
    }
    else if(M == 61){
        int i, j, ti, tj,tmp = 0, flag = 0;
        for(ti = 7; ti < N; ti += 8){
            for(tj = 7; tj < M; tj += 8){
                //1
                for(i = ti-7; i <= ti-4; i++){
                    for(j = tj -7; j <= tj-4; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }    
                }
                //2
                for(i = ti-7; i <= ti-4; i++){
                    for(j = tj-3; j <= tj; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }  
                }
                //3
                for(i = ti-3; i <= ti; i++){
                    for(j = tj -3; j <= tj; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }    
                }
                //4
                for(i = ti-3; i<=ti; i++){
                    for(j = tj-7; j <= tj-4; j++){
                        if(i == j){
                            tmp = A[i][i];
                            flag = 1;
                            continue;
                        }
                        B[j][i] = A[i][j];
                    }
                    if(flag){
                        B[i][i] = tmp;
                        flag = 0;
                    }
                }
            }
        }
        for(tj = 7; tj < M; tj+=8){
            for(i = 64; i < N; i++){
                for(j = tj-7; j<=tj; j++){
                    B[j][i] = A[i][j];
                }
            }
        }
        for(ti = 3; ti < N; ti +=4){
            for(i = ti - 3; i<=ti; i++){
                for(j = 56; j < M; j++){
                    B[j][i] = A[i][j];
                }
            }
        }
        for(i = 64; i<N; i++){
            for(j = 56; j<M;j++){
                B[j][i] = A[i][j];
            }
        }
    
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

