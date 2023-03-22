# 1 "symtablelist.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "symtablelist.c"




# 1 "symtable.h" 1






# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4

# 149 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 216 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 328 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 8 "symtable.h" 2



# 10 "symtable.h"
typedef struct SymTable *SymTable_T;


SymTable_T SymTable_new(void);


void SymTable_free(SymTable_T oSymTable);


size_t SymTable_getLength(SymTable_T oSymTable);



int SymTable_put(SymTable_T oSymTable,
    const char *pcKey, const void *pvValue);



void *SymTable_replace(SymTable_T oSymTable,
    const char *pcKey, const void *pvValue);


int SymTable_contains(SymTable_T oSymTable, const char *pcKey);


void *SymTable_get(SymTable_T oSymTable, const char *pcKey);



void *SymTable_remove(SymTable_T oSymTable, const char *pcKey);


void SymTable_map(SymTable_T oSymTable,
    void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra),
    const void *pvExtra);
# 6 "symtablelist.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 428 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 442 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 443 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 444 "/usr/include/sys/cdefs.h" 2 3 4
# 429 "/usr/include/features.h" 2 3 4
# 452 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 453 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 7 "symtablelist.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 61 "/usr/include/string.h" 3 4
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 91 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 122 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 226 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 303 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 330 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 385 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 397 "/usr/include/string.h" 3 4
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
# 499 "/usr/include/string.h" 3 4

# 8 "symtablelist.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 32 "/usr/include/stdlib.h" 2 3 4


# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/floatn.h" 1 3 4
# 23 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 24 "/usr/include/bits/floatn.h" 2 3 4
# 95 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/bits/floatn-common.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 25 "/usr/include/bits/floatn-common.h" 2 3 4
# 96 "/usr/include/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
# 117 "/usr/include/stdlib.h" 3 4
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 453 "/usr/include/stdlib.h" 3 4
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
# 539 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 563 "/usr/include/stdlib.h" 3 4
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
# 588 "/usr/include/stdlib.h" 3 4
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 614 "/usr/include/stdlib.h" 3 4
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
# 631 "/usr/include/stdlib.h" 3 4
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 781 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 805 "/usr/include/stdlib.h" 3 4
typedef int (*__compar_fn_t) (const void *, const void *);
# 817 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 837 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
# 849 "/usr/include/stdlib.h" 3 4
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
# 919 "/usr/include/stdlib.h" 3 4
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));
# 1010 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 1011 "/usr/include/stdlib.h" 2 3 4
# 1020 "/usr/include/stdlib.h" 3 4

# 9 "symtablelist.c" 2



# 11 "symtablelist.c"
struct SymTableNode {

    char *pcKey;

    void *pvValue;

    struct SymTableNode *pstNext;
};


struct SymTable {

    size_t length;

    struct SymTableNode *pstFirst;
};

SymTable_T SymTable_new(void) {
    SymTable_T oSymTable;
    oSymTable = (SymTable_T)malloc(sizeof(struct SymTable));
    if (oSymTable == 
# 31 "symtablelist.c" 3 4
                    ((void *)0)
# 31 "symtablelist.c"
                        )
        return 
# 32 "symtablelist.c" 3 4
              ((void *)0)
# 32 "symtablelist.c"
                  ;
    oSymTable->length = 0;
    oSymTable->pstFirst = 
# 34 "symtablelist.c" 3 4
                         ((void *)0)
# 34 "symtablelist.c"
                             ;
    return oSymTable;
}

void SymTable_free(SymTable_T oSymTable) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstNext;
    
# 41 "symtablelist.c" 3 4
   ((
# 41 "symtablelist.c"
   oSymTable != 
# 41 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 41 "symtablelist.c"
   "oSymTable != NULL"
# 41 "symtablelist.c" 3 4
   , "symtablelist.c", 41, __extension__ __PRETTY_FUNCTION__))
# 41 "symtablelist.c"
                            ;

    pstCurr = oSymTable->pstFirst;

    while (pstCurr != 
# 45 "symtablelist.c" 3 4
                     ((void *)0)
# 45 "symtablelist.c"
                         ) {

        pstNext = pstCurr->pstNext;
        free(pstCurr->pcKey);
        free(pstCurr);

        pstCurr = pstNext;
    }
    free(oSymTable);
}


size_t SymTable_getLength(SymTable_T oSymTable) {
    
# 58 "symtablelist.c" 3 4
   ((
# 58 "symtablelist.c"
   oSymTable != 
# 58 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 58 "symtablelist.c"
   "oSymTable != NULL"
# 58 "symtablelist.c" 3 4
   , "symtablelist.c", 58, __extension__ __PRETTY_FUNCTION__))
# 58 "symtablelist.c"
                            ;
    return oSymTable->length;
}

int SymTable_put(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    
# 64 "symtablelist.c" 3 4
   ((
# 64 "symtablelist.c"
   oSymTable != 
# 64 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 64 "symtablelist.c"
   "oSymTable != NULL"
# 64 "symtablelist.c" 3 4
   , "symtablelist.c", 64, __extension__ __PRETTY_FUNCTION__))
# 64 "symtablelist.c"
                            ;
    
# 65 "symtablelist.c" 3 4
   ((
# 65 "symtablelist.c"
   pcKey != 
# 65 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 65 "symtablelist.c"
   "pcKey != NULL"
# 65 "symtablelist.c" 3 4
   , "symtablelist.c", 65, __extension__ __PRETTY_FUNCTION__))
# 65 "symtablelist.c"
                        ;

    pstCurr = oSymTable->pstFirst;

    while (pstCurr != 
# 69 "symtablelist.c" 3 4
                     ((void *)0)
# 69 "symtablelist.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return 0;
        pstCurr = pstCurr->pstNext;
    }
    pstCurr = (struct SymTableNode*)malloc(sizeof(struct SymTableNode));
    if (pstCurr == 
# 76 "symtablelist.c" 3 4
                  ((void *)0)
# 76 "symtablelist.c"
                      ) return 0;

    pstCurr->pcKey = (char *)malloc(sizeof(char) * (strlen(pcKey) + 1));
    if (pstCurr->pcKey == 
# 79 "symtablelist.c" 3 4
                         ((void *)0)
# 79 "symtablelist.c"
                             ) return 0;
    strcpy(pstCurr->pcKey, pcKey);
    pstCurr->pvValue = (void *)pvValue;

    pstCurr->pstNext = oSymTable->pstFirst;
    oSymTable->pstFirst = pstCurr;
    oSymTable->length++;
    return 1;
}

void *SymTable_replace(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    void *pvOldValue;
    
# 92 "symtablelist.c" 3 4
   ((
# 92 "symtablelist.c"
   oSymTable != 
# 92 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 92 "symtablelist.c"
   "oSymTable != NULL"
# 92 "symtablelist.c" 3 4
   , "symtablelist.c", 92, __extension__ __PRETTY_FUNCTION__))
# 92 "symtablelist.c"
                            ;
    
# 93 "symtablelist.c" 3 4
   ((
# 93 "symtablelist.c"
   pcKey != 
# 93 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 93 "symtablelist.c"
   "pcKey != NULL"
# 93 "symtablelist.c" 3 4
   , "symtablelist.c", 93, __extension__ __PRETTY_FUNCTION__))
# 93 "symtablelist.c"
                        ;
    pstCurr = oSymTable->pstFirst;

    while (pstCurr != 
# 96 "symtablelist.c" 3 4
                     ((void *)0)
# 96 "symtablelist.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0) {
            pvOldValue = pstCurr->pvValue;
            pstCurr->pvValue = (void *)pvValue;
            return pvOldValue;
        }
        pstCurr = pstCurr->pstNext;
    }
    return 
# 105 "symtablelist.c" 3 4
          ((void *)0)
# 105 "symtablelist.c"
              ;
}

int SymTable_contains(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    
# 110 "symtablelist.c" 3 4
   ((
# 110 "symtablelist.c"
   oSymTable != 
# 110 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 110 "symtablelist.c"
   "oSymTable != NULL"
# 110 "symtablelist.c" 3 4
   , "symtablelist.c", 110, __extension__ __PRETTY_FUNCTION__))
# 110 "symtablelist.c"
                            ;
    
# 111 "symtablelist.c" 3 4
   ((
# 111 "symtablelist.c"
   pcKey != 
# 111 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 111 "symtablelist.c"
   "pcKey != NULL"
# 111 "symtablelist.c" 3 4
   , "symtablelist.c", 111, __extension__ __PRETTY_FUNCTION__))
# 111 "symtablelist.c"
                        ;
    pstCurr = oSymTable->pstFirst;

    while (pstCurr != 
# 114 "symtablelist.c" 3 4
                     ((void *)0)
# 114 "symtablelist.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return 1;
        pstCurr = pstCurr->pstNext;
    }
    return 0;
}

void *SymTable_get(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    
# 125 "symtablelist.c" 3 4
   ((
# 125 "symtablelist.c"
   oSymTable != 
# 125 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 125 "symtablelist.c"
   "oSymTable != NULL"
# 125 "symtablelist.c" 3 4
   , "symtablelist.c", 125, __extension__ __PRETTY_FUNCTION__))
# 125 "symtablelist.c"
                            ;
    
# 126 "symtablelist.c" 3 4
   ((
# 126 "symtablelist.c"
   pcKey != 
# 126 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 126 "symtablelist.c"
   "pcKey != NULL"
# 126 "symtablelist.c" 3 4
   , "symtablelist.c", 126, __extension__ __PRETTY_FUNCTION__))
# 126 "symtablelist.c"
                        ;
    pstCurr = oSymTable->pstFirst;

    while (pstCurr != 
# 129 "symtablelist.c" 3 4
                     ((void *)0)
# 129 "symtablelist.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return pstCurr->pvValue;
        pstCurr = pstCurr->pstNext;
    }
    return 
# 135 "symtablelist.c" 3 4
          ((void *)0)
# 135 "symtablelist.c"
              ;
}

void *SymTable_remove(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstPrev;
    void *pvValue;
    
# 142 "symtablelist.c" 3 4
   ((
# 142 "symtablelist.c"
   oSymTable != 
# 142 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 142 "symtablelist.c"
   "oSymTable != NULL"
# 142 "symtablelist.c" 3 4
   , "symtablelist.c", 142, __extension__ __PRETTY_FUNCTION__))
# 142 "symtablelist.c"
                            ;
    
# 143 "symtablelist.c" 3 4
   ((
# 143 "symtablelist.c"
   pcKey != 
# 143 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 143 "symtablelist.c"
   "pcKey != NULL"
# 143 "symtablelist.c" 3 4
   , "symtablelist.c", 143, __extension__ __PRETTY_FUNCTION__))
# 143 "symtablelist.c"
                        ;

    if (oSymTable->length == 0)
        return 
# 146 "symtablelist.c" 3 4
              ((void *)0)
# 146 "symtablelist.c"
                  ;

    if (strcmp(pcKey, oSymTable->pstFirst->pcKey) == 0) {

        pvValue = oSymTable->pstFirst->pvValue;
        pstCurr = oSymTable->pstFirst;

        oSymTable->pstFirst = oSymTable->pstFirst->pstNext;

        free(pstCurr->pcKey);
        free(pstCurr);
        oSymTable->length--;
        return pvValue;
    }
    pstCurr = oSymTable->pstFirst->pstNext;
    pstPrev = oSymTable->pstFirst;

    while (pstCurr != 
# 163 "symtablelist.c" 3 4
                     ((void *)0)
# 163 "symtablelist.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0) {
            pvValue = pstCurr->pvValue;

            pstPrev->pstNext = pstCurr->pstNext;

            free(pstCurr->pcKey);
            free(pstCurr);
            oSymTable->length--;
            return pvValue;
        }
        pstPrev = pstCurr;
        pstCurr = pstCurr->pstNext;
    }
    return 
# 178 "symtablelist.c" 3 4
          ((void *)0)
# 178 "symtablelist.c"
              ;
}

void SymTable_map(SymTable_T oSymTable,
    void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra), const void *pvExtra) {
    struct SymTableNode *pstCurr;
    
# 184 "symtablelist.c" 3 4
   ((
# 184 "symtablelist.c"
   oSymTable != 
# 184 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 184 "symtablelist.c"
   "oSymTable != NULL"
# 184 "symtablelist.c" 3 4
   , "symtablelist.c", 184, __extension__ __PRETTY_FUNCTION__))
# 184 "symtablelist.c"
                            ;
    
# 185 "symtablelist.c" 3 4
   ((
# 185 "symtablelist.c"
   pfApply != 
# 185 "symtablelist.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 185 "symtablelist.c"
   "pfApply != NULL"
# 185 "symtablelist.c" 3 4
   , "symtablelist.c", 185, __extension__ __PRETTY_FUNCTION__))
# 185 "symtablelist.c"
                          ;
    pstCurr = oSymTable->pstFirst;

    while (pstCurr != 
# 188 "symtablelist.c" 3 4
                     ((void *)0)
# 188 "symtablelist.c"
                         ) {

        (*pfApply)(pstCurr->pcKey, pstCurr->pvValue, (void*)pvExtra);
        pstCurr = pstCurr->pstNext;
    }
}
