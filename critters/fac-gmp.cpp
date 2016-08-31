// How to build & runL
// gcc -o fac-gmp-cpp fac-gmp.cpp -lgmp -O3 && time ./fac-gmp-cpp > res-fac-gmp-cpp
// gcc-v5.4.0
// gmpc-dev v11.8.16-9
#include <stdio.h>
#include <gmp.h>

static void factorial (long n, mpz_t r)
{
    mpz_init_set_si (r, 1);
    for (; n > 1; n--) {
       mpz_mul_si (r, r, n);
    }
}

int main (void)
{
    int n;
    mpz_t r;
    factorial (1000000, r);
    gmp_printf ("%Zd\n", r);
    return 0;
}
