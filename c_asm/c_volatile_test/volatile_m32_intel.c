#include<stdio.h>

int main(){
  /* int a = 12; */
  volatile int a = 12;
  printf("a=%d\n", a);
  /* int ebp; */
  /* asm("mov %0, ebp":"=r"(ebp)); */
  /* printf("ebp=%p, &a=%p\n", ebp,&a); */
  asm ("mov dword ptr [ebp-16], 0");//change val of a with asm
  int b = a;
  printf("b=%d\n", b);
  return 0;
}
