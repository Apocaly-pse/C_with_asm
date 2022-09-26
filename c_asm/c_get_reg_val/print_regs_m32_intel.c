#include<stdio.h>

int funcA()
{
    int a = 1;
    int b = 2;
    char c = '3';
	int ebp,esp;
    asm("mov %0, ebp":"=r"(ebp));
    asm("mov %0, esp":"=r"(esp));
    printf("&a = %x\n", &a);
    printf("&b = %x\n", &b);
    printf("&c = %x\n", &c);
    printf("esp = %X  ebp = %X\n", esp, ebp);
	/*&a = fffa1e6c
&b = fffa1e70
&c = fffa1e6b
esp = FFFA1E60  ebp = FFFA1E88*/
}

int main() { funcA(); }
