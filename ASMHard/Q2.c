#include <stdio.h>
typedef long long int lli;

extern int test(lli *a, lli *b, lli *c, lli *x);

int main(void)
{
    lli a = 3;
	lli b = 31;
	lli c = 26;
	lli x = 33;
    x = test(&a, &b, &c, &x);
    printf("Result of test = %lld\n", x);
    return 0;
}