#include<stdio.h>

int main(void)
{
	int a=10, b=0;
	asm("movl %1, %%ebx\n\t"
	"movl %%eax, %0\n\t"
	:"=r"(b)
	:"r"(a)
	:"%eax"
	);
	printf("result: %d, %d\n", a,b);
	return 0;
}
