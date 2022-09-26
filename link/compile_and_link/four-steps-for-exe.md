## 1. preprocess

```bash
gcc -E main.c -o main.i
# or:
cpp main.c > main.i
```

## 2. compile

```bash
gcc -S main.i -o main.s
# or: 
/usr/lib/gcc/x86_64-pc-linux-gnu/12.2.0/cc1 main.c
# or: 
gcc -S main.c -o main.s
```

## 3. assembly

```bash
as main.s -o main.o
#or: 
gcc -c main.c -o main.o
```

## 4. link

```bash 
ld -static /usr/lib/crt1.o /usr/lib/crti.o /usr/lib/gcc/x86_64-pc-linux-gnu/12.2.0/crtbeginT.o -L /usr/lib/gcc/x86_64-pc-linux-gnu/12.2.0 -L/usr/lib -L/lib hello.o --start-group -l gcc -lgcc_eh -lc --end-group /usr/lib/gcc/x86_64-pc-linux-gnu/12.2.0/crtend.o /usr/lib/crtn.o
# then execute:
./a.out
```
