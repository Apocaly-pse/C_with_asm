#include<stdio.h>
 
void fun(int arg)
{
   long rbp;
   asm("movq %0, rbp":"=r"(rbp));

   printf("asm rbp:[%#x]\n",rbp);
   printf("arg rbp:[%#x]\n",(&arg+5));
   /*
        asm rbp:[0xaca90e50]
arg rbp:[0xaca90e50]*/
}
 
int main()
{
  fun(12);
 
  return 0;
}
