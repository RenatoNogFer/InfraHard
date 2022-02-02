#include <stdio.h>
typedef long long int lli;

extern lli test(char a[], char b[]);

int main(void)
{
    char letters[] = "aaaaaa";
    char word[] = "a"; 
    lli a;
    a = test(letters, word);
    printf("Result of test = %lld\n", a);
    return 0;
}