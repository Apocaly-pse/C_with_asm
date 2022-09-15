#include<stdio.h>
 
void fun(int arg)
{
   long rbp;
   asm("movq %%rbp, %0  \n\t":"=r"(rbp));

   printf("asm rbp:[%#x]\n",rbp);
   printf("arg rbp:[%#x]\n",(&arg));
   /*asm rbp:[0x610f4f40]
	 arg rbp:[0x610f4f2c]*/
}
 
int main()
{
  fun(12);
 
  return 0;
}
