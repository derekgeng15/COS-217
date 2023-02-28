all: replace teststra teststrp
# build replace
replace: replace.o strp.o
	gcc217 replace.o strp.o -o replace
replace.o: replace.s
	gcc217 -c replace.s
replace.s: replace.i
	gcc217 -S replace.i

# build teststra and teststrp
teststra: teststr.o stra.o
	gcc217 teststr.o stra.o -o teststra
teststrp: teststr.o strp.o
	gcc217 teststr.o strp.o -o teststrp

# build teststr binary
teststr.o: teststr.s
	gcc217 -c teststr.s
teststr.s: teststr.i
	gcc217 -S teststr.i

# build stra.o binary
stra.o: stra.s
	gcc217 -c stra.s
stra.s: stra.i
	gcc217 -S stra.i

# build strp.o binary
strp.o: strp.s
	gcc217 -c strp.s
strp.s: strp.i
	gcc217 -S strp.i

# clean command
clean:
	rm -f *.o *.s