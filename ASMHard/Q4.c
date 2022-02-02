#include <stdio.h>
typedef long long int lli;

extern lli test(long long int *a);

int main(void)
{
    lli a = -3;
    a = test(&a);
    printf("Result of test = %lld\n", a);
    return 0;
}
