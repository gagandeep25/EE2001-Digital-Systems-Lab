#include <stdio.h>


void and_gate(unsigned short int a, unsigned short int b, unsigned short int *y)
{
    *y = a & b;
}
void or_gate(unsigned short int a, unsigned short int b, unsigned short int *y)
{
    *y = a | b;
}
void xor_gate(unsigned short int a, unsigned short int b, unsigned short int *y)
{
    *y = a ^ b;
}
void not_gate(unsigned short int a, unsigned short int *y)
{
    *y = !a;
}
void nand_gate(unsigned short int a, unsigned short int b, unsigned short int *y)
{
    *y = !(a & b);
}
void nor_gate(unsigned short int a, unsigned short int b, unsigned short int *y)
{
    *y = !(a | b);
}
void xnor_gate(unsigned short int a, unsigned short int b, unsigned short int *y)
{
    *y = !(a ^ b);
}

void circuit1(unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int *z)
{
    unsigned short int s1, s2, s3;
    s1 = a | c;
    s2 = a | (!b);
    s3 = (!a) | b | (!c);
    *z = s1 & s2 & s3;
}

int main()
{
    int time;
    unsigned short int a, b, c, z1, z2;
    unsigned short int s1, s2, s3, s4, s5;
    while(scanf("%d %hu %hu %hu", &time, &a, &b, &c) != EOF)
    {
        xor_gate(a, b, &s1);
        xor_gate(s1, c, &z1);
        and_gate(a, b, &s2);
        and_gate(a, c, &s3);
        or_gate(s2, s3, &s4);
        and_gate(b, c, &s5);
        or_gate(s4, s5, &z2);
        printf("%d %hu %hu %hu %hu %hu\n", time, a, b, c, z1, z2);
    }
}
