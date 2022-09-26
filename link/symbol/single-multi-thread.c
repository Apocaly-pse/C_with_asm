#include<stdio.h>
#include<pthread.h>

int pthread_create(
pthread_t*,
const pthread_attr_t*,
void* (*)(void*),
void*)__attribute((weak));

int main (){
	if(pthread_create){
		printf("multi-thread\n");
	}
	else{
		printf("single-thread\n");
	}
	return 0;
}
		
