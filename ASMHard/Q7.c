#include <stdio.h>
typedef long long int lli;

extern char test(char a[], char b[]);

int main(void)
{
    char player1[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char player2[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char a;
    a = test(player1, player2);
    printf("Result of test = %c\n", a);
    return 0;
}