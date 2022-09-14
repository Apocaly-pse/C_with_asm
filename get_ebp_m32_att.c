#include<stdio.h>
 
void fun(int arg)
{
   int ebp=0;
   asm("movl %%ebp, %0  \n\t":"=r"(ebp));
   printf("asm ebp:[%x]\n",ebp);
 
   printf("arg ebp:[%x]\n",(&arg-2));
   /*asm ebp:[ffe21ac8]
arg ebp:[ffe21ac8]*/
 
   /* while(1); */                         
}
 
int main()
{
  fun(12);
 
  return 0;
}
