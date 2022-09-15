#include<stdio.h>
 
void fun(int arg)
{
   long rbp;
   asm("movq %%rbp, %0":"=r"(rbp));

   printf("asm rbp:[%#x]\n",rbp);
   printf("arg rbp:[%#x]\n",(&arg+5));
   /*asm rbp:[0x89280a50]
arg rbp:[0x89280a50]*/
}
 
int main()
{
  fun(12);
 
  return 0;
}
