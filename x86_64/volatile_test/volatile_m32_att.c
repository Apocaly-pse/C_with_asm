#include<stdio.h>

int main(){
  volatile int a = 12;
  printf("a=%d\n", a);
  int ebp;
  asm("movl %%ebp, %0":"=r"(ebp));
  printf("ebp=%p, &a=%p\n", ebp,&a);
  asm volatile("movl $0x0, -16(%ebp)");//change val of a with asm
  int b = a;
  printf("b=%d\n", b);
  return 0;
}
