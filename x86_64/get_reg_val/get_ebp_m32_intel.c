#include <stdio.h>

void fun(int arg) {
  int ebp = 0;
  asm("mov %0, ebp" : "=r"(ebp));
  printf("asm ebp:[%x]\n", ebp);
  printf("arg ebp:[%x]\n", (&arg - 2));
  /*asm ebp:[ffe21ac8]
	arg ebp:[ffe21ac8]*/

}

int main()
{
  fun(12);
 
  return 0;
}
