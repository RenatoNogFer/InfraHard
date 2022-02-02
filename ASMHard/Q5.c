/*
Resposta da letra A
Devido a forma como a instrução funciona, exigindo um registrador e um desvio condicional, o tipo
em que melhor encaixaria é possivelmente CB-format.
*/

#include <stdio.h>
typedef long long int lli;

extern lli test(long long int *a);

int main(void)
{
    lli a = 3;
    a = test(&a);
    printf("Result of test(3) = %lld\n", a);
    return 0;
}
