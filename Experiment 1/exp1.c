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

void circuit_structural(unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int d, unsigned short int e, unsigned short int f, unsigned short int *y1, unsigned short int *y2, unsigned short int *y3, unsigned short int *y4)
{
    unsigned short int w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;
    not_gate(d, &w1);
    and_gate(w1, e, y1);
    and_gate(a, b, &w2);
    or_gate(c, d, &w3);
    and_gate(w2, w3, &w4);
    xor_gate(e, w4, y2);
    xor_gate(e, f, &w5);
    or_gate(w5, a, &w6);
    not_gate(a, &w8);
    and_gate(b, e, &w9);
    xor_gate(w8, w9, &w10);
    and_gate(w6, w10, &w7);
    xor_gate(w3, w7, y3);
    xor_gate(c, f, &w11);
    and_gate(w11, d, &w12);
    not_gate(w12, &w13);
    or_gate(w10, w13, &w14);
    xor_gate(w14, b, y4);
}

void circuit_behavioural(unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int d, unsigned short int e, unsigned short int f, unsigned short int *y1, unsigned short int *y2, unsigned short int *y3, unsigned short int *y4)
{
    unsigned short int w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;
    w1 = !d;
    *y1 = w1 & e;
    w2 = a & b;
    w3 = c | d;
    w4 = w2 & w3;
    *y2 = e ^ w4;
    w5 = e ^ f;
    w6 = w5 | a;
    w8 = !a;
    w9 = b & e;
    w10 = w8 ^ w9;
    w7 = w6 & w10;
    *y3 = w3 ^ w7;
    w11 = c ^ f;
    w12 = w11 & d;
    w13 = !w12;
    w14 = w10 | w13;
    *y4 = w14 ^ b;

}
int main()
{
    int time;
    unsigned short int a, b, c, d, e, f, y1, y2, y3, y4;
    while(scanf("%d %hu %hu %hu %hu %hu %hu", &time, &a, &b, &c, &d, &e, &f) != EOF)
    {
        circuit_structural(a, b, c, d, e, f, &y1, &y2, &y3, &y4);
        printf("%d %hu %hu %hu %hu\n", time, y1, y2, y3, y4);
    }
}
