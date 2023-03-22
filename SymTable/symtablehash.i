# 1 "symtablehash.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "symtablehash.c"




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
# 6 "symtablehash.c" 2
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



# 7 "symtablehash.c" 2
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

# 8 "symtablehash.c" 2
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

# 9 "symtablehash.c" 2



# 11 "symtablehash.c"
static const size_t numBuckets[] = {509, 1021, 2039, 4093, 8191, 16381, 32749, 65521};


static const size_t MAX_BUCKET_COUNT = sizeof(numBuckets)/sizeof(numBuckets[0]);


struct SymTableNode {

    char *pcKey;

    void *pvValue;

    struct SymTableNode *pstNext;
};


struct SymTable {

    size_t length;

    size_t bIndex;

    struct SymTableNode ** bucket;
};



static size_t SymTable_hash(const char *pcKey, size_t uBucketCount)
{
   const size_t HASH_MULTIPLIER = 65599;
   size_t u;
   size_t uHash = 0;

   
# 44 "symtablehash.c" 3 4
  ((
# 44 "symtablehash.c"
  pcKey != 
# 44 "symtablehash.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 44 "symtablehash.c"
  "pcKey != NULL"
# 44 "symtablehash.c" 3 4
  , "symtablehash.c", 44, __extension__ __PRETTY_FUNCTION__))
# 44 "symtablehash.c"
                       ;

   for (u = 0; pcKey[u] != '\0'; u++)
      uHash = uHash * HASH_MULTIPLIER + (size_t)pcKey[u];

   return uHash % uBucketCount;
}


static void SymTable_resize(SymTable_T oSymTable) {
    struct SymTableNode **newBucket;
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstNext;
    size_t newHash;
    size_t i;
    
# 59 "symtablehash.c" 3 4
   ((
# 59 "symtablehash.c"
   oSymTable != 
# 59 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 59 "symtablehash.c"
   "oSymTable != NULL"
# 59 "symtablehash.c" 3 4
   , "symtablehash.c", 59, __extension__ __PRETTY_FUNCTION__))
# 59 "symtablehash.c"
                            ;

    newBucket = (struct SymTableNode **) malloc(numBuckets[oSymTable->bIndex + 1] * sizeof(struct SymTableNode *));
    if (newBucket == 
# 62 "symtablehash.c" 3 4
                    ((void *)0)
# 62 "symtablehash.c"
                        ) return;
    for (i = 0; i < numBuckets[oSymTable->bIndex + 1]; i++)
        newBucket[i] = 
# 64 "symtablehash.c" 3 4
                      ((void *)0)
# 64 "symtablehash.c"
                          ;

    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++) {
        pstCurr = oSymTable->bucket[i];
        while (pstCurr != 
# 68 "symtablehash.c" 3 4
                         ((void *)0)
# 68 "symtablehash.c"
                             ) {

            newHash = SymTable_hash(pstCurr->pcKey, numBuckets[oSymTable->bIndex + 1]);
            pstNext = pstCurr->pstNext;

            pstCurr->pstNext = newBucket[newHash];
            newBucket[newHash] = pstCurr;
            pstCurr = pstNext;
        }
    }
    oSymTable->bIndex++;
    free(oSymTable->bucket);
    oSymTable->bucket = newBucket;
}

SymTable_T SymTable_new(void) {
    SymTable_T oSymTable;
    size_t i;
    oSymTable = (SymTable_T)malloc(sizeof(struct SymTable));
    if (oSymTable == 
# 87 "symtablehash.c" 3 4
                    ((void *)0)
# 87 "symtablehash.c"
                        )
        return 
# 88 "symtablehash.c" 3 4
              ((void *)0)
# 88 "symtablehash.c"
                  ;
    oSymTable->length = 0;
    oSymTable->bIndex = 0;
    oSymTable->bucket = (struct SymTableNode **) malloc(numBuckets[oSymTable->bIndex] * sizeof(struct SymTableNode *));
    if (oSymTable->bucket == 
# 92 "symtablehash.c" 3 4
                            ((void *)0)
# 92 "symtablehash.c"
                                ) return 
# 92 "symtablehash.c" 3 4
                                         ((void *)0)
# 92 "symtablehash.c"
                                             ;
    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++)
        oSymTable->bucket[i] = 
# 94 "symtablehash.c" 3 4
                              ((void *)0)
# 94 "symtablehash.c"
                                  ;
    return oSymTable;
}

void SymTable_free(SymTable_T oSymTable) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstNext;
    size_t i;
    
# 102 "symtablehash.c" 3 4
   ((
# 102 "symtablehash.c"
   oSymTable != 
# 102 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 102 "symtablehash.c"
   "oSymTable != NULL"
# 102 "symtablehash.c" 3 4
   , "symtablehash.c", 102, __extension__ __PRETTY_FUNCTION__))
# 102 "symtablehash.c"
                            ;

    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++) {

        pstCurr = oSymTable->bucket[i];

        while (pstCurr != 
# 108 "symtablehash.c" 3 4
                         ((void *)0)
# 108 "symtablehash.c"
                             ) {

            pstNext = pstCurr->pstNext;
            free(pstCurr->pcKey);
            free(pstCurr);

            pstCurr = pstNext;
        }
    }
    free(oSymTable->bucket);
    free(oSymTable);
}

size_t SymTable_getLength(SymTable_T oSymTable) {
    
# 122 "symtablehash.c" 3 4
   ((
# 122 "symtablehash.c"
   oSymTable != 
# 122 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 122 "symtablehash.c"
   "oSymTable != NULL"
# 122 "symtablehash.c" 3 4
   , "symtablehash.c", 122, __extension__ __PRETTY_FUNCTION__))
# 122 "symtablehash.c"
                            ;
    return oSymTable->length;
}

int SymTable_put(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    size_t hash;
    
# 129 "symtablehash.c" 3 4
   ((
# 129 "symtablehash.c"
   oSymTable != 
# 129 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 129 "symtablehash.c"
   "oSymTable != NULL"
# 129 "symtablehash.c" 3 4
   , "symtablehash.c", 129, __extension__ __PRETTY_FUNCTION__))
# 129 "symtablehash.c"
                            ;
    
# 130 "symtablehash.c" 3 4
   ((
# 130 "symtablehash.c"
   pcKey != 
# 130 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 130 "symtablehash.c"
   "pcKey != NULL"
# 130 "symtablehash.c" 3 4
   , "symtablehash.c", 130, __extension__ __PRETTY_FUNCTION__))
# 130 "symtablehash.c"
                        ;
    hash = SymTable_hash(pcKey, numBuckets[oSymTable->bIndex]);
    pstCurr = oSymTable->bucket[hash];

    while (pstCurr != 
# 134 "symtablehash.c" 3 4
                     ((void *)0)
# 134 "symtablehash.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return 0;
        pstCurr = pstCurr->pstNext;
    }
    pstCurr = (struct SymTableNode*)malloc(sizeof(struct SymTableNode));
    if (pstCurr == 
# 141 "symtablehash.c" 3 4
                  ((void *)0)
# 141 "symtablehash.c"
                      ) return 0;

    pstCurr->pcKey = (char *)malloc(sizeof(char) * (strlen(pcKey) + 1));
    if (pstCurr->pcKey == 
# 144 "symtablehash.c" 3 4
                         ((void *)0)
# 144 "symtablehash.c"
                             ) return 0;
    strcpy(pstCurr->pcKey, pcKey);
    pstCurr->pvValue = (void *)pvValue;

    pstCurr->pstNext = oSymTable->bucket[hash];
    oSymTable->bucket[hash] = pstCurr;
    oSymTable->length++;

    if (oSymTable->length > numBuckets[oSymTable->bIndex]
        && oSymTable->bIndex + 1 < MAX_BUCKET_COUNT)
        SymTable_resize(oSymTable);
    return 1;
}

void *SymTable_replace(SymTable_T oSymTable, const char *pcKey, const void *pvValue) {
    struct SymTableNode *pstCurr;
    void *pvOldValue;
    
# 161 "symtablehash.c" 3 4
   ((
# 161 "symtablehash.c"
   oSymTable != 
# 161 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 161 "symtablehash.c"
   "oSymTable != NULL"
# 161 "symtablehash.c" 3 4
   , "symtablehash.c", 161, __extension__ __PRETTY_FUNCTION__))
# 161 "symtablehash.c"
                            ;
    
# 162 "symtablehash.c" 3 4
   ((
# 162 "symtablehash.c"
   pcKey != 
# 162 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 162 "symtablehash.c"
   "pcKey != NULL"
# 162 "symtablehash.c" 3 4
   , "symtablehash.c", 162, __extension__ __PRETTY_FUNCTION__))
# 162 "symtablehash.c"
                        ;
    pstCurr = oSymTable->bucket[SymTable_hash(pcKey, numBuckets[oSymTable->bIndex])];

    while (pstCurr != 
# 165 "symtablehash.c" 3 4
                     ((void *)0)
# 165 "symtablehash.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0) {
            pvOldValue = pstCurr->pvValue;
            pstCurr->pvValue = (void *)pvValue;
            return pvOldValue;
        }
        pstCurr = pstCurr->pstNext;
    }
    return 
# 174 "symtablehash.c" 3 4
          ((void *)0)
# 174 "symtablehash.c"
              ;
}

int SymTable_contains(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    
# 179 "symtablehash.c" 3 4
   ((
# 179 "symtablehash.c"
   oSymTable != 
# 179 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 179 "symtablehash.c"
   "oSymTable != NULL"
# 179 "symtablehash.c" 3 4
   , "symtablehash.c", 179, __extension__ __PRETTY_FUNCTION__))
# 179 "symtablehash.c"
                            ;
    
# 180 "symtablehash.c" 3 4
   ((
# 180 "symtablehash.c"
   pcKey != 
# 180 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 180 "symtablehash.c"
   "pcKey != NULL"
# 180 "symtablehash.c" 3 4
   , "symtablehash.c", 180, __extension__ __PRETTY_FUNCTION__))
# 180 "symtablehash.c"
                        ;
    pstCurr = oSymTable->bucket[SymTable_hash(pcKey, numBuckets[oSymTable->bIndex])];

    while (pstCurr != 
# 183 "symtablehash.c" 3 4
                     ((void *)0)
# 183 "symtablehash.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return 1;
        pstCurr = pstCurr->pstNext;
    }
    return 0;
}

void *SymTable_get(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    
# 194 "symtablehash.c" 3 4
   ((
# 194 "symtablehash.c"
   oSymTable != 
# 194 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 194 "symtablehash.c"
   "oSymTable != NULL"
# 194 "symtablehash.c" 3 4
   , "symtablehash.c", 194, __extension__ __PRETTY_FUNCTION__))
# 194 "symtablehash.c"
                            ;
    
# 195 "symtablehash.c" 3 4
   ((
# 195 "symtablehash.c"
   pcKey != 
# 195 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 195 "symtablehash.c"
   "pcKey != NULL"
# 195 "symtablehash.c" 3 4
   , "symtablehash.c", 195, __extension__ __PRETTY_FUNCTION__))
# 195 "symtablehash.c"
                        ;
    pstCurr = oSymTable->bucket[SymTable_hash(pcKey, numBuckets[oSymTable->bIndex])];

    while (pstCurr != 
# 198 "symtablehash.c" 3 4
                     ((void *)0)
# 198 "symtablehash.c"
                         ) {

        if (strcmp(pcKey, pstCurr->pcKey) == 0)
            return pstCurr->pvValue;
        pstCurr = pstCurr->pstNext;
    }
    return 
# 204 "symtablehash.c" 3 4
          ((void *)0)
# 204 "symtablehash.c"
              ;
}

void *SymTable_remove(SymTable_T oSymTable, const char *pcKey) {
    struct SymTableNode *pstCurr;
    struct SymTableNode *pstPrev;
    size_t hash;
    void *pvValue;
    
# 212 "symtablehash.c" 3 4
   ((
# 212 "symtablehash.c"
   oSymTable != 
# 212 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 212 "symtablehash.c"
   "oSymTable != NULL"
# 212 "symtablehash.c" 3 4
   , "symtablehash.c", 212, __extension__ __PRETTY_FUNCTION__))
# 212 "symtablehash.c"
                            ;
    
# 213 "symtablehash.c" 3 4
   ((
# 213 "symtablehash.c"
   pcKey != 
# 213 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 213 "symtablehash.c"
   "pcKey != NULL"
# 213 "symtablehash.c" 3 4
   , "symtablehash.c", 213, __extension__ __PRETTY_FUNCTION__))
# 213 "symtablehash.c"
                        ;

    if (oSymTable->length == 0)
        return 
# 216 "symtablehash.c" 3 4
              ((void *)0)
# 216 "symtablehash.c"
                  ;

    hash = SymTable_hash(pcKey, numBuckets[oSymTable->bIndex]);
    if (oSymTable->bucket[hash] == 
# 219 "symtablehash.c" 3 4
                                  ((void *)0)
# 219 "symtablehash.c"
                                      ) return 
# 219 "symtablehash.c" 3 4
                                               ((void *)0)
# 219 "symtablehash.c"
                                                   ;
    if (strcmp(pcKey, oSymTable->bucket[hash]->pcKey) == 0) {

        pvValue = oSymTable->bucket[hash]->pvValue;
        pstCurr = oSymTable->bucket[hash];

        oSymTable->bucket[hash] = oSymTable->bucket[hash]->pstNext;

        free(pstCurr->pcKey);
        free(pstCurr);
        oSymTable->length--;
        return pvValue;
    }
    pstCurr = oSymTable->bucket[hash]->pstNext;
    pstPrev = oSymTable->bucket[hash];

    while (pstCurr != 
# 235 "symtablehash.c" 3 4
                     ((void *)0)
# 235 "symtablehash.c"
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
# 250 "symtablehash.c" 3 4
          ((void *)0)
# 250 "symtablehash.c"
              ;
}

void SymTable_map(SymTable_T oSymTable,
    void (*pfApply)(const char *pcKey, void *pvValue, void *pvExtra), const void *pvExtra) {
    struct SymTableNode *pstCurr;
    size_t i;
    
# 257 "symtablehash.c" 3 4
   ((
# 257 "symtablehash.c"
   oSymTable != 
# 257 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 257 "symtablehash.c"
   "oSymTable != NULL"
# 257 "symtablehash.c" 3 4
   , "symtablehash.c", 257, __extension__ __PRETTY_FUNCTION__))
# 257 "symtablehash.c"
                            ;
    
# 258 "symtablehash.c" 3 4
   ((
# 258 "symtablehash.c"
   pfApply != 
# 258 "symtablehash.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 258 "symtablehash.c"
   "pfApply != NULL"
# 258 "symtablehash.c" 3 4
   , "symtablehash.c", 258, __extension__ __PRETTY_FUNCTION__))
# 258 "symtablehash.c"
                          ;

    for (i = 0; i < numBuckets[oSymTable->bIndex]; i++) {
        pstCurr = oSymTable->bucket[i];
        while (pstCurr != 
# 262 "symtablehash.c" 3 4
                         ((void *)0)
# 262 "symtablehash.c"
                             ) {

            (*pfApply)(pstCurr->pcKey, pstCurr->pvValue, (void*)pvExtra);
            pstCurr = pstCurr->pstNext;
        }
    }
}
