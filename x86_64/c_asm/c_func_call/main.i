# 0 "main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "main.c"
int bar(int c, int d) {
  int e = c + d;
  return e;
}

int foo(int a, int b) { return bar(a, b); }

int main(void) {
  foo(2, 3);
  return 0;
}
