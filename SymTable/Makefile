all: testsymtablelist testsymtablehash

# build test executables 
testsymtablelist: testsymtable.o symtablelist.o
		gcc217 testsymtable.o symtablelist.o -o testsymtablelist

testsymtablehash: testsymtable.o symtablehash.o
		gcc217 testsymtable.o symtablehash.o -o testsymtablehash

# build testsymtable binary
testsymtable.o: testsymtable.s
		gcc217 -c testsymtable.s
testsymtable.s: testsymtable.i
		gcc217 -S testsymtable.i
testsymtable.i: testsymtable.c
		gcc217 -E testsymtable.c > testsymtable.i
		
# build symtablehash binary
symtablehash.o: symtablehash.s
		gcc217 -c symtablehash.s
symtablehash.s: symtablehash.i
		gcc217 -S symtablehash.i
symtablehash.i: symtablelist.c symtable.h
		gcc217 -E symtablehash.c > symtablehash.i

# build symtablelist binary
symtablelist.o: symtablelist.s
		gcc217 -c symtablelist.s
symtablelist.s: symtablelist.i
		gcc217 -S symtablelist.i
symtablelist.i: symtablelist.c symtable.h
		gcc217 -E symtablelist.c > symtablelist.i

# clean command
clean:
		rm -f *.o *.s *.i testsymtablelist testsymtablehash