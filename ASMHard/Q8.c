#include <stdio.h>
typedef long long int lli;

extern lli test(lli *a);

int main(void)
{
    lli a = 678, res;
    res = test(&a);
    printf("Result of test = %lld\n", res);
    return 0;
}