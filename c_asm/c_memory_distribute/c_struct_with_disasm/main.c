#include<stdio.h>

int main()
{
	struct {
		char d;
		char a;
		short b;
		int c;
	} s;
	s.a=1;//1
	s.b=2;//2
	s.c=3;//4
	s.d=4;//1
	printf("%u\n", sizeof s);//abcd:12, dabc:8

	return 0;
}
