#include "poly.h"
#include<time.h>
//PART B
void poly_optim(const double a[], double x, long degree, double *result) {
    double r1 = a[degree], r2 = a[degree-1], r3 = a[degree - 2], r4 = a[degree - 3], r5 = a[degree - 4], r6 = a[degree - 5], r7 = a[degree - 6];
    double xx = x*x*x*x*x*x*x;//xx = x^7
    int i;
    for(i = degree - 7; i - 6 >= 0; i -= 7) { 
        r1 = r1*xx + a[i];
        r2 = r2*xx + a[i-1];
        r3 = r3*xx + a[i-2];
        r4 = r4*xx + a[i-3];
        r5 = r5*xx + a[i-4];
        r6 = r6*xx + a[i-5];
        r7 = r7*xx + a[i-6];
    }
    r1 = ((((((r1*x)+r2)*x+r3)*x+r4)*x+r5)*x+r6)*x+r7;
    for( ; i >= 0 ; i--) {
        r1 = r1 * x + a[i];
    }
    *result = r1; 
}

//PART A
void measure_time(poly_func_t poly, const double a[], double x, long degree,
        double *time) {
    struct timespec tp, res;
    double result;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &res);
    for(int i = 0; i < 1000; i++) {
        poly(a, x, degree, &result);
    }
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &tp);
    *time = (double)(tp.tv_nsec - res.tv_nsec)/1000;
}
