CC = gcc217 -g

all: mywcc mywcs fibc fibs fibopt fiboptoptflat fiboptopt 

mywcc: mywc.c
	$(CC) mywc.c -o mywcc

mywcs: mywc.s
	$(CC) mywc.s -o mywcs

fibc: fib.c bigint.c bigintadd.c
	$(CC) -D NDEBUG -O fib.c bigint.c bigintadd.c -o fibc

fibs: fib.c bigint.c bigintadd.s
	$(CC) -D NDEBUG -O fib.c bigint.c bigintadd.s -o fibs

fibopt: fib.c bigint.c bigintaddopt.s
	$(CC) -D NDEBUG -O fib.c bigint.c bigintaddopt.s -o fibopt

fiboptoptflat: fib.c bigint.c bigintaddoptoptflat.c
	$(CC) -D NDEBUG -O fib.c bigint.c bigintaddoptoptflat.c -o fiboptoptflat

fiboptopt: fib.c bigint.c bigintaddoptopt.s
	$(CC) -D NDEBUG -O fib.c bigint.c bigintaddoptopt.s -o fiboptopt


clean:
	rm *.o mywcs mywcc fibopt fibs fibc

