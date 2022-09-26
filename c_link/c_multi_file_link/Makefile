main: main.o stack.o
	gcc -o main main.o stack.o

main.o: main.c
	gcc -c main.c stack.h

stack.o: stack.c
	gcc -c stack.c stack.h 

run: 
	./main

clean:
	rm *.o main
