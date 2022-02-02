#include <stdio.h>

extern int test(long long int *a, long long int *b, long long int *m);

int main(void)
{
    long long int a = 5;
    long long int b = 9;
    long long int m;
    m = test(&a, &b, &m);
    printf("Result of test  = %lld\n", m);
    return 0;
}
