#include <stdio.h>
typedef long long int lli;

extern lli test(lli *a, lli *b);

int main(void)
{
    lli a = 0xffff0000ffff0000; 
    lli b = 0x0000ffff0000ffff;
    lli res;
    res = test(&a, &b);
    printf("Result of test = %lld\n", res);
    return 0;
}