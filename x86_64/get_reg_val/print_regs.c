#include<stdio.h>

int funcA()
{
    int a = 1;
    int b = 2;
    char c = '3';
    asm("mov %ebp, ebp");
    asm("mov %esp, esp");
    printf("&a = %x\n", &a);
    printf("&b = %x\n", &b);
    printf("&c = %x\n", &c);
    printf("esp = %X  ebp = %X\n", esp, ebp);
}

int main() { funcA(); }
