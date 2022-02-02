#include <stdio.h>
typedef long long int lli;

extern lli test(char a[]);

int main(void)
{
    char word[] = "ablublu";
    lli a;
    a = test(word);
    printf("Result of test = %lld\n", a);
    return 0;
}