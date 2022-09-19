#include <stdio.h>
#include "stack.h"
// 函数声明的extern可以省略, 但是变量声明的不可以
extern void push(char);
extern char pop(void);
extern int is_empty(void);

int a, b = 1;
int main(void) {
  extern int top;
  //如果引用了外部文件中的变量, 变量的声明必须加extern, 并且不能在声明时初始化
  push('a');
  push('b');
  push('c');
  printf("top=%d\n", top);
  while (!is_empty())
    putchar(pop());
  putchar('\n');
  printf("top=%d\n", top);
  return 0;
}
