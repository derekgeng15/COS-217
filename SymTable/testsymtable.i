# 1 "testsymtable.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "testsymtable.c"





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
# 7 "testsymtable.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
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
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stdarg.h" 3 4

# 40 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 140 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 141 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 39 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4
# 84 "/usr/include/stdio.h" 3 4
typedef __fpos_t fpos_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 173 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 187 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 213 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 246 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 304 "/usr/include/stdio.h" 3 4
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
# 326 "/usr/include/stdio.h" 3 4
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
# 391 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 491 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);
# 527 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 570 "/usr/include/stdio.h" 3 4
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 583 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));
# 632 "/usr/include/stdio.h" 3 4
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 690 "/usr/include/stdio.h" 3 4
extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 737 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 763 "/usr/include/stdio.h" 3 4
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 781 "/usr/include/stdio.h" 3 4
extern void perror (const char *__s);





# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 788 "/usr/include/stdio.h" 2 3 4
# 864 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
# 879 "/usr/include/stdio.h" 3 4

# 8 "testsymtable.c" 2
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

# 9 "testsymtable.c" 2
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4
# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 30 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 34 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 38 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 39 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/bits/types/struct_tm.h" 1 3 4






struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;





  long int __tm_gmtoff;
  const char *__tm_zone;

};
# 40 "/usr/include/time.h" 2 3 4
# 68 "/usr/include/time.h" 3 4




extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
# 119 "/usr/include/time.h" 3 4
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
# 139 "/usr/include/time.h" 3 4
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
# 159 "/usr/include/time.h" 3 4
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
# 307 "/usr/include/time.h" 3 4

# 10 "testsymtable.c" 2
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

# 11 "testsymtable.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 64 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 12 "testsymtable.c" 2


# 1 "/usr/include/sys/resource.h" 1 3 4
# 24 "/usr/include/sys/resource.h" 3 4
# 1 "/usr/include/bits/resource.h" 1 3 4
# 31 "/usr/include/bits/resource.h" 3 4
enum __rlimit_resource
{

  RLIMIT_CPU = 0,



  RLIMIT_FSIZE = 1,



  RLIMIT_DATA = 2,



  RLIMIT_STACK = 3,



  RLIMIT_CORE = 4,






  __RLIMIT_RSS = 5,



  RLIMIT_NOFILE = 7,
  __RLIMIT_OFILE = RLIMIT_NOFILE,




  RLIMIT_AS = 9,



  __RLIMIT_NPROC = 6,



  __RLIMIT_MEMLOCK = 8,



  __RLIMIT_LOCKS = 10,



  __RLIMIT_SIGPENDING = 11,



  __RLIMIT_MSGQUEUE = 12,





  __RLIMIT_NICE = 13,




  __RLIMIT_RTPRIO = 14,





  __RLIMIT_RTTIME = 15,


  __RLIMIT_NLIMITS = 16,
  __RLIM_NLIMITS = __RLIMIT_NLIMITS


};
# 131 "/usr/include/bits/resource.h" 3 4
typedef __rlim_t rlim_t;







struct rlimit
  {

    rlim_t rlim_cur;

    rlim_t rlim_max;
  };
# 158 "/usr/include/bits/resource.h" 3 4
enum __rusage_who
{

  RUSAGE_SELF = 0,



  RUSAGE_CHILDREN = -1
# 176 "/usr/include/bits/resource.h" 3 4
};

# 1 "/usr/include/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 179 "/usr/include/bits/resource.h" 2 3 4
# 1 "/usr/include/bits/types/struct_rusage.h" 1 3 4
# 31 "/usr/include/bits/types/struct_rusage.h" 3 4
struct rusage
  {

    struct timeval ru_utime;

    struct timeval ru_stime;

    __extension__ union
      {
 long int ru_maxrss;
 __syscall_slong_t __ru_maxrss_word;
      };



    __extension__ union
      {
 long int ru_ixrss;
 __syscall_slong_t __ru_ixrss_word;
      };

    __extension__ union
      {
 long int ru_idrss;
 __syscall_slong_t __ru_idrss_word;
      };

    __extension__ union
      {
 long int ru_isrss;
  __syscall_slong_t __ru_isrss_word;
      };


    __extension__ union
      {
 long int ru_minflt;
 __syscall_slong_t __ru_minflt_word;
      };

    __extension__ union
      {
 long int ru_majflt;
 __syscall_slong_t __ru_majflt_word;
      };

    __extension__ union
      {
 long int ru_nswap;
 __syscall_slong_t __ru_nswap_word;
      };


    __extension__ union
      {
 long int ru_inblock;
 __syscall_slong_t __ru_inblock_word;
      };

    __extension__ union
      {
 long int ru_oublock;
 __syscall_slong_t __ru_oublock_word;
      };

    __extension__ union
      {
 long int ru_msgsnd;
 __syscall_slong_t __ru_msgsnd_word;
      };

    __extension__ union
      {
 long int ru_msgrcv;
 __syscall_slong_t __ru_msgrcv_word;
      };

    __extension__ union
      {
 long int ru_nsignals;
 __syscall_slong_t __ru_nsignals_word;
      };



    __extension__ union
      {
 long int ru_nvcsw;
 __syscall_slong_t __ru_nvcsw_word;
      };


    __extension__ union
      {
 long int ru_nivcsw;
 __syscall_slong_t __ru_nivcsw_word;
      };
  };
# 180 "/usr/include/bits/resource.h" 2 3 4







enum __priority_which
{
  PRIO_PROCESS = 0,

  PRIO_PGRP = 1,

  PRIO_USER = 2

};



# 223 "/usr/include/bits/resource.h" 3 4

# 25 "/usr/include/sys/resource.h" 2 3 4


typedef __id_t id_t;




# 42 "/usr/include/sys/resource.h" 3 4
typedef int __rlimit_resource_t;
typedef int __rusage_who_t;
typedef int __priority_which_t;





extern int getrlimit (__rlimit_resource_t __resource,
        struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__));
# 69 "/usr/include/sys/resource.h" 3 4
extern int setrlimit (__rlimit_resource_t __resource,
        const struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__));
# 87 "/usr/include/sys/resource.h" 3 4
extern int getrusage (__rusage_who_t __who, struct rusage *__usage) __attribute__ ((__nothrow__ , __leaf__));





extern int getpriority (__priority_which_t __which, id_t __who) __attribute__ ((__nothrow__ , __leaf__));



extern int setpriority (__priority_which_t __which, id_t __who, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));


# 15 "testsymtable.c" 2
# 26 "testsymtable.c"

# 26 "testsymtable.c"
static void assure(int iSuccessful, int iLineNum)
{
   if (! iSuccessful)
   {
      printf("Test at line %d failed.\n", iLineNum);
      fflush(
# 31 "testsymtable.c" 3 4
            stdout
# 31 "testsymtable.c"
                  );
   }
}
# 42 "testsymtable.c"
static void setCpuTimeLimit(void)
{
   enum {CPU_TIME_LIMIT_IN_SECONDS = 300};
   struct rlimit sRlimit;
   sRlimit.rlim_cur = CPU_TIME_LIMIT_IN_SECONDS;
   sRlimit.rlim_max = CPU_TIME_LIMIT_IN_SECONDS;
   setrlimit(
# 48 "testsymtable.c" 3 4
            RLIMIT_CPU
# 48 "testsymtable.c"
                      , &sRlimit);
}







static void printBinding(const char *pcKey, void *pvValue,
   void *pvExtra)
{
   
# 60 "testsymtable.c" 3 4
  ((
# 60 "testsymtable.c"
  pcKey != 
# 60 "testsymtable.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 60 "testsymtable.c"
  "pcKey != NULL"
# 60 "testsymtable.c" 3 4
  , "testsymtable.c", 60, __extension__ __PRETTY_FUNCTION__))
# 60 "testsymtable.c"
                       ;
   
# 61 "testsymtable.c" 3 4
  ((
# 61 "testsymtable.c"
  pvValue != 
# 61 "testsymtable.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 61 "testsymtable.c"
  "pvValue != NULL"
# 61 "testsymtable.c" 3 4
  , "testsymtable.c", 61, __extension__ __PRETTY_FUNCTION__))
# 61 "testsymtable.c"
                         ;
   
# 62 "testsymtable.c" 3 4
  ((
# 62 "testsymtable.c"
  pvExtra != 
# 62 "testsymtable.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 62 "testsymtable.c"
  "pvExtra != NULL"
# 62 "testsymtable.c" 3 4
  , "testsymtable.c", 62, __extension__ __PRETTY_FUNCTION__))
# 62 "testsymtable.c"
                         ;

   printf((char*)pvExtra, pcKey, (char*)pvValue);
   fflush(
# 65 "testsymtable.c" 3 4
         stdout
# 65 "testsymtable.c"
               );
}






static void printBindingSimple(const char *pcKey, void *pvValue,
   void *pvExtra)
{
   
# 76 "testsymtable.c" 3 4
  ((
# 76 "testsymtable.c"
  pcKey != 
# 76 "testsymtable.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 76 "testsymtable.c"
  "pcKey != NULL"
# 76 "testsymtable.c" 3 4
  , "testsymtable.c", 76, __extension__ __PRETTY_FUNCTION__))
# 76 "testsymtable.c"
                       ;
   
# 77 "testsymtable.c" 3 4
  ((
# 77 "testsymtable.c"
  pvValue != 
# 77 "testsymtable.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 77 "testsymtable.c"
  "pvValue != NULL"
# 77 "testsymtable.c" 3 4
  , "testsymtable.c", 77, __extension__ __PRETTY_FUNCTION__))
# 77 "testsymtable.c"
                         ;
   
# 78 "testsymtable.c" 3 4
  ((
# 78 "testsymtable.c"
  pvExtra == 
# 78 "testsymtable.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 78 "testsymtable.c"
  "pvExtra == NULL"
# 78 "testsymtable.c" 3 4
  , "testsymtable.c", 78, __extension__ __PRETTY_FUNCTION__))
# 78 "testsymtable.c"
                         ;

   printf("%s\t%s\n", pcKey, (char*)pvValue);
   fflush(
# 81 "testsymtable.c" 3 4
         stdout
# 81 "testsymtable.c"
               );
}





static void testBasics(void)
{
   SymTable_T oSymTable;
   char acJeter[] = "Jeter";
   char acMantle[] = "Mantle";
   char acGehrig[] = "Gehrig";
   char acRuth[] = "Ruth";
   char acShortstop[] = "Shortstop";
   char acCenterField[] = "Center Field";
   char acFirstBase[] = "First Base";
   char acRightField[] = "Right Field";

   char acBrown[] = "Brown";

   char *pcValue;
   int iSuccessful;
   int iFound;
   size_t uLength;

   printf("------------------------------------------------------\n");
   printf("Testing the most basic SymTable functions.\n");
   printf("No output should appear here:\n");
   fflush(
# 110 "testsymtable.c" 3 4
         stdout
# 110 "testsymtable.c"
               );



   oSymTable = SymTable_new();
   assure(oSymTable != 
# 115 "testsymtable.c" 3 4
  ((void *)0)
# 115 "testsymtable.c"
  , 115);



   iSuccessful = SymTable_put(oSymTable, acJeter, acShortstop);
   assure(iSuccessful, 120);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 1, 123);

   iSuccessful = SymTable_put(oSymTable, acMantle, acCenterField);
   assure(iSuccessful, 126);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 2, 129);

   iSuccessful = SymTable_put(oSymTable, acGehrig, acFirstBase);
   assure(iSuccessful, 132);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 3, 135);

   iSuccessful = SymTable_put(oSymTable, acRuth, acRightField);
   assure(iSuccessful, 138);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 4, 141);


   iSuccessful = SymTable_put(oSymTable, acJeter, acCenterField);
   assure(! iSuccessful, 145);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 4, 148);


   iSuccessful = SymTable_put(oSymTable, acRuth, acCenterField);
   assure(! iSuccessful, 152);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 4, 155);




   iFound = SymTable_contains(oSymTable, acJeter);
   assure(iFound, 161);

   iFound = SymTable_contains(oSymTable, acMantle);
   assure(iFound, 164);

   iFound = SymTable_contains(oSymTable, acGehrig);
   assure(iFound, 167);

   iFound = SymTable_contains(oSymTable, acRuth);
   assure(iFound, 170);

   iFound = SymTable_contains(oSymTable, "Clemens");
   assure(! iFound, 173);

   iFound = SymTable_contains(oSymTable, "Maris");
   assure(! iFound, 176);



   pcValue = (char*)SymTable_get(oSymTable, acJeter);
   assure(pcValue == acShortstop, 181);

   pcValue = (char*)SymTable_get(oSymTable, acMantle);
   assure(pcValue == acCenterField, 184);

   pcValue = (char*)SymTable_get(oSymTable, acGehrig);
   assure(pcValue == acFirstBase, 187);

   pcValue = (char*)SymTable_get(oSymTable, acRuth);
   assure(pcValue == acRightField, 190);

   pcValue = (char*)SymTable_get(oSymTable, "Clemens");
   assure(pcValue == 
# 193 "testsymtable.c" 3 4
  ((void *)0)
# 193 "testsymtable.c"
  , 193);

   pcValue = (char*)SymTable_get(oSymTable, "Maris");
   assure(pcValue == 
# 196 "testsymtable.c" 3 4
  ((void *)0)
# 196 "testsymtable.c"
  , 196);



   pcValue = (char*)
      SymTable_replace(oSymTable, acMantle, acFirstBase);
   assure(pcValue == acCenterField, 202);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 4, 205);

   pcValue = (char*)SymTable_get(oSymTable, acMantle);
   assure(pcValue == acFirstBase, 208);

   pcValue = (char*)
      SymTable_replace(oSymTable, "Clemens", acRightField);
   assure(pcValue == 
# 212 "testsymtable.c" 3 4
  ((void *)0)
# 212 "testsymtable.c"
  , 212);

   pcValue = (char*)SymTable_replace(oSymTable, "Maris", acRightField);
   assure(pcValue == 
# 215 "testsymtable.c" 3 4
  ((void *)0)
# 215 "testsymtable.c"
  , 215);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 4, 218);



   iSuccessful = SymTable_put(oSymTable, acBrown, 
# 222 "testsymtable.c" 3 4
                                                 ((void *)0)
# 222 "testsymtable.c"
                                                     );
   assure(iSuccessful, 223);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 5, 226);


   iSuccessful = SymTable_put(oSymTable, acBrown, acShortstop);
   assure(! iSuccessful, 230);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 5, 233);




   SymTable_free(oSymTable);
}





static void testKeyComparison(void)
{
   SymTable_T oSymTable;
   char acJeter[] = "Jeter";
   char acJeter2[] = "Jeter";
   char acShortstop[] = "Shortstop";
   char *pcValue;
   int iSuccessful;

   printf("------------------------------------------------------\n");
   printf("Testing key comparison.\n");
   printf("No output should appear here:\n");
   fflush(
# 257 "testsymtable.c" 3 4
         stdout
# 257 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 260 "testsymtable.c" 3 4
  ((void *)0)
# 260 "testsymtable.c"
  , 260);
   iSuccessful = SymTable_put(oSymTable, acJeter, acShortstop);
   assure(iSuccessful, 262);
   iSuccessful = SymTable_put(oSymTable, acJeter2, acShortstop);
   assure(! iSuccessful, 264);
   pcValue = (char*)SymTable_get(oSymTable, acJeter2);
   assure(pcValue == acShortstop, 266);
   SymTable_free(oSymTable);
}





static void testKeyOwnership(void)
{
   enum {MAX_KEY_LENGTH = 10};

   SymTable_T oSymTable;
   char acKey[MAX_KEY_LENGTH];
   char *pcValue;
   int iSuccessful;
   char acCenterField[] = "CenterField";

   printf("------------------------------------------------------\n");
   printf("Testing key ownership.\n");
   printf("No output should appear here:\n");
   fflush(
# 287 "testsymtable.c" 3 4
         stdout
# 287 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 290 "testsymtable.c" 3 4
  ((void *)0)
# 290 "testsymtable.c"
  , 290);
   strcpy(acKey, "Mantle");
   iSuccessful = SymTable_put(oSymTable, acKey, acCenterField);
   assure(iSuccessful, 293);
   strcpy(acKey, "xxx");
   pcValue = (char*)SymTable_get(oSymTable, "Mantle");
   assure(pcValue == acCenterField, 296);

   SymTable_free(oSymTable);
}





static void testRemove(void)
{
   SymTable_T oSymTable;
   char acJeter[] = "Jeter";
   char acMantle[] = "Mantle";
   char acGehrig[] = "Gehrig";
   char acRuth[] = "Ruth";
   char acShortstop[] = "Shortstop";
   char acCenterField[] = "Center Field";
   char acFirstBase[] = "First Base";
   char acRightField[] = "Right Field";

   char *pcValue;
   int iFound;
   size_t uLength;
   int iSuccessful;

   printf("------------------------------------------------------\n");
   printf("Testing the SymTable_remove() function.\n");
   printf("No output should appear here:\n");
   fflush(
# 325 "testsymtable.c" 3 4
         stdout
# 325 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 328 "testsymtable.c" 3 4
  ((void *)0)
# 328 "testsymtable.c"
  , 328);

   iSuccessful = SymTable_put(oSymTable, acJeter, acShortstop);
   assure(iSuccessful, 331);

   iSuccessful = SymTable_put(oSymTable, acMantle, acCenterField);
   assure(iSuccessful, 334);

   iSuccessful = SymTable_put(oSymTable, acGehrig, acFirstBase);
   assure(iSuccessful, 337);

   iSuccessful = SymTable_put(oSymTable, acRuth, acRightField);
   assure(iSuccessful, 340);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 4, 343);

   pcValue = (char*)SymTable_remove(oSymTable, acJeter);
   assure(pcValue == acShortstop, 346);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 3, 349);

   iFound = SymTable_contains(oSymTable, acJeter);
   assure(! iFound, 352);

   pcValue = (char*)SymTable_remove(oSymTable, acRuth);
   assure(pcValue == acRightField, 355);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 2, 358);

   iFound = SymTable_contains(oSymTable, acRuth);
   assure(! iFound, 361);

   pcValue = (char*)SymTable_remove(oSymTable, "Clemens");
   assure(pcValue == 
# 364 "testsymtable.c" 3 4
  ((void *)0)
# 364 "testsymtable.c"
  , 364);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 2, 367);

   iFound = SymTable_contains(oSymTable, "Clemens");
   assure(! iFound, 370);

   pcValue = (char*)SymTable_remove(oSymTable, acRuth);
   assure(pcValue == 
# 373 "testsymtable.c" 3 4
  ((void *)0)
# 373 "testsymtable.c"
  , 373);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 2, 376);

   iFound = SymTable_contains(oSymTable, acRuth);
   assure(! iFound, 379);

   SymTable_free(oSymTable);
}





static void testMap(void)
{
   SymTable_T oSymTable;
   char acJeter[] = "Jeter";
   char acMantle[] = "Mantle";
   char acGehrig[] = "Gehrig";
   char acRuth[] = "Ruth";
   char acShortstop[] = "Shortstop";
   char acCenterField[] = "Center Field";
   char acFirstBase[] = "First Base";
   char acRightField[] = "Right Field";

   int iSuccessful;

   printf("------------------------------------------------------\n");
   printf("Testing the SymTable_map() function.\n");
   fflush(
# 404 "testsymtable.c" 3 4
         stdout
# 404 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 407 "testsymtable.c" 3 4
  ((void *)0)
# 407 "testsymtable.c"
  , 407);

   iSuccessful = SymTable_put(oSymTable, acJeter, acShortstop);
   assure(iSuccessful, 410);

   iSuccessful = SymTable_put(oSymTable, acMantle, acCenterField);
   assure(iSuccessful, 413);

   iSuccessful = SymTable_put(oSymTable, acGehrig, acFirstBase);
   assure(iSuccessful, 416);

   iSuccessful = SymTable_put(oSymTable, acRuth, acRightField);
   assure(iSuccessful, 419);

   printf("Four players and their positions should appear here:\n");
   fflush(
# 422 "testsymtable.c" 3 4
         stdout
# 422 "testsymtable.c"
               );
   SymTable_map(oSymTable, printBinding, "%s\t%s\n");

   printf("Four players and their positions should appear here:\n");
   fflush(
# 426 "testsymtable.c" 3 4
         stdout
# 426 "testsymtable.c"
               );
   SymTable_map(oSymTable, printBindingSimple, 
# 427 "testsymtable.c" 3 4
                                              ((void *)0)
# 427 "testsymtable.c"
                                                  );

   SymTable_free(oSymTable);
}





static void testEmptyTable(void)
{
   SymTable_T oSymTable;
   char *pcValue;
   int iFound;
   size_t uLength;

   printf("------------------------------------------------------\n");
   printf("Testing an empty SymTable object.\n");
   printf("No output should appear here:\n");
   fflush(
# 446 "testsymtable.c" 3 4
         stdout
# 446 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 449 "testsymtable.c" 3 4
  ((void *)0)
# 449 "testsymtable.c"
  , 449);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 0, 452);

   iFound = SymTable_contains(oSymTable, "Jeter");
   assure(! iFound, 455);

   pcValue = (char*)SymTable_get(oSymTable, "Jeter");
   assure(pcValue == 
# 458 "testsymtable.c" 3 4
  ((void *)0)
# 458 "testsymtable.c"
  , 458);

   pcValue = (char*)SymTable_remove(oSymTable, "Jeter");
   assure(pcValue == 
# 461 "testsymtable.c" 3 4
  ((void *)0)
# 461 "testsymtable.c"
  , 461);

   SymTable_map(oSymTable, printBinding, "%s\t%s\n");

   SymTable_free(oSymTable);
}





static void testEmptyKey(void)
{
   SymTable_T oSymTable;
   char *pcValue;
   char acShortstop[] = "Shortstop";
   int iFound;
   size_t uLength;
   int iSuccessful;

   printf("------------------------------------------------------\n");
   printf("Testing a SymTable object that contains an empty key.\n");
   fflush(
# 483 "testsymtable.c" 3 4
         stdout
# 483 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 486 "testsymtable.c" 3 4
  ((void *)0)
# 486 "testsymtable.c"
  , 486);

   iSuccessful = SymTable_put(oSymTable, "", acShortstop);
   assure(iSuccessful, 489);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 1, 492);

   iFound = SymTable_contains(oSymTable, "");
   assure(iFound, 495);

   pcValue = (char*)SymTable_get(oSymTable, "");
   assure(pcValue == acShortstop, 498);

   printf("An empty name and a position should appear here:\n");
   fflush(
# 501 "testsymtable.c" 3 4
         stdout
# 501 "testsymtable.c"
               );
   SymTable_map(oSymTable, printBinding, "%s\t%s\n");

   pcValue = (char*)SymTable_remove(oSymTable, "");
   assure(pcValue == acShortstop, 505);

   SymTable_free(oSymTable);
}





static void testNullValue(void)
{
   SymTable_T oSymTable;
   char *pcValue;
   int iFound;
   size_t uLength;
   int iSuccessful;
   char acCenterField[] = "Center Field";

   printf("------------------------------------------------------\n");
   printf("Testing a SymTable object that contains NULL values.\n");
   printf("No output should appear here:\n");
   fflush(
# 526 "testsymtable.c" 3 4
         stdout
# 526 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 529 "testsymtable.c" 3 4
  ((void *)0)
# 529 "testsymtable.c"
  , 529);

   iSuccessful = SymTable_put(oSymTable, "Jeter", 
# 531 "testsymtable.c" 3 4
                                                 ((void *)0)
# 531 "testsymtable.c"
                                                     );
   assure(iSuccessful, 532);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 1, 535);

   iFound = SymTable_contains(oSymTable, "Jeter");
   assure(iFound, 538);

   pcValue = (char*)SymTable_get(oSymTable, "Jeter");
   assure(pcValue == 
# 541 "testsymtable.c" 3 4
  ((void *)0)
# 541 "testsymtable.c"
  , 541);

   pcValue = (char*)SymTable_remove(oSymTable, "Jeter");
   assure(pcValue == 
# 544 "testsymtable.c" 3 4
  ((void *)0)
# 544 "testsymtable.c"
  , 544);

   iSuccessful = SymTable_put(oSymTable, "Mantle", acCenterField);
   assure(iSuccessful, 547);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 1, 550);

   iFound = SymTable_contains(oSymTable, "Mantle");
   assure(iFound, 553);

   pcValue = (char*)SymTable_get(oSymTable, "Mantle");
   assure(pcValue == acCenterField, 556);

   pcValue = SymTable_replace(oSymTable, "Mantle", 
# 558 "testsymtable.c" 3 4
                                                  ((void *)0)
# 558 "testsymtable.c"
                                                      );
   assure(pcValue == acCenterField, 559);

   iFound = SymTable_contains(oSymTable, "Mantle");
   assure(iFound, 562);

   pcValue = (char*)SymTable_get(oSymTable, "Mantle");
   assure(pcValue == 
# 565 "testsymtable.c" 3 4
  ((void *)0)
# 565 "testsymtable.c"
  , 565);

   pcValue = (char*)SymTable_remove(oSymTable, "Mantle");
   assure(pcValue == 
# 568 "testsymtable.c" 3 4
  ((void *)0)
# 568 "testsymtable.c"
  , 568);

   SymTable_free(oSymTable);
}





static void testLongKey(void)
{
   enum {KEY_SIZE = 1000};

   SymTable_T oSymTable;
   char acKeyA[KEY_SIZE];
   char acKeyB[KEY_SIZE];
   char *pcValue;
   char acShortstop[] = "Shortstop";
   int iFound;
   int i;
   size_t uLength;
   int iSuccessful;

   printf("------------------------------------------------------\n");
   printf("Testing a SymTable object that contains long keys.\n");
   printf("No output should appear here:\n");
   fflush(
# 594 "testsymtable.c" 3 4
         stdout
# 594 "testsymtable.c"
               );

   for (i = 0; i < KEY_SIZE - 1; i++)
      acKeyA[i] = 'a';
   acKeyA[KEY_SIZE - 1] = '\0';

   for (i = 0; i < KEY_SIZE - 1; i++)
      acKeyB[i] = 'b';
   acKeyB[KEY_SIZE - 1] = '\0';

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 605 "testsymtable.c" 3 4
  ((void *)0)
# 605 "testsymtable.c"
  , 605);

   iSuccessful = SymTable_put(oSymTable, acKeyA, acShortstop);
   assure(iSuccessful, 608);
   iSuccessful = SymTable_put(oSymTable, acKeyB, acShortstop);
   assure(iSuccessful, 610);
   iSuccessful = SymTable_put(oSymTable, acKeyB, acShortstop);
   assure(! iSuccessful, 612);

   uLength = SymTable_getLength(oSymTable);
   assure(uLength == 2, 615);

   iFound = SymTable_contains(oSymTable, acKeyA);
   assure(iFound, 618);
   iFound = SymTable_contains(oSymTable, acKeyB);
   assure(iFound, 620);

   pcValue = (char*)SymTable_get(oSymTable, acKeyA);
   assure(pcValue == acShortstop, 623);
   pcValue = (char*)SymTable_get(oSymTable, acKeyB);
   assure(pcValue == acShortstop, 625);

   pcValue = (char*)SymTable_remove(oSymTable, acKeyB);
   assure(pcValue == acShortstop, 628);
   pcValue = (char*)SymTable_remove(oSymTable, acKeyB);
   assure(pcValue == 
# 630 "testsymtable.c" 3 4
  ((void *)0)
# 630 "testsymtable.c"
  , 630);
   pcValue = (char*)SymTable_remove(oSymTable, acKeyA);
   assure(pcValue == acShortstop, 632);

   SymTable_free(oSymTable);
}






static void testTableOfTables(void)
{
   SymTable_T oSymTable;
   SymTable_T oSymTable1;
   SymTable_T oSymTable2;
   SymTable_T oSymTableRet;
   char acShortstop[] = "Shortstop";
   char acCenterField[] = "CenterField";
   char *pcValue;
   int iSuccessful;

   printf("------------------------------------------------------\n");
   printf("Testing a SymTable object that contains other\n");
   printf("SymTable objects.\n");
   printf("No output should appear here:\n");
   fflush(
# 657 "testsymtable.c" 3 4
         stdout
# 657 "testsymtable.c"
               );

   oSymTable1 = SymTable_new();
   assure(oSymTable1 != 
# 660 "testsymtable.c" 3 4
  ((void *)0)
# 660 "testsymtable.c"
  , 660);

   iSuccessful = SymTable_put(oSymTable1, "Jeter", acShortstop);
   assure(iSuccessful, 663);

   oSymTable2 = SymTable_new();
   assure(oSymTable2 != 
# 666 "testsymtable.c" 3 4
  ((void *)0)
# 666 "testsymtable.c"
  , 666);

   iSuccessful = SymTable_put(oSymTable2, "Mantle", acCenterField);
   assure(iSuccessful, 669);

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 672 "testsymtable.c" 3 4
  ((void *)0)
# 672 "testsymtable.c"
  , 672);

   iSuccessful = SymTable_put(oSymTable, "first table", oSymTable1);
   assure(iSuccessful, 675);

   iSuccessful = SymTable_put(oSymTable, "second table", oSymTable2);
   assure(iSuccessful, 678);

   oSymTableRet = (SymTable_T)SymTable_get(oSymTable, "first table");
   assure(oSymTableRet == oSymTable1, 681);

   pcValue = (char*)SymTable_get(oSymTableRet, "Jeter");
   assure(pcValue == acShortstop, 684);

   oSymTableRet = (SymTable_T)SymTable_get(oSymTable, "second table");
   assure(oSymTableRet == oSymTable2, 687);

   pcValue = (char*)SymTable_get(oSymTableRet, "Mantle");
   assure(pcValue == acCenterField, 690);

   SymTable_free(oSymTable2);
   SymTable_free(oSymTable1);
   SymTable_free(oSymTable);
}
# 705 "testsymtable.c"
static void testCollisions(void)
{
   SymTable_T oSymTable;
   int iSuccessful;
   char acCenterField[] = "pitcher";
   char acCatcher[] = "catcher";
   char acFirstBase[] = "first base";
   char acRightField[] = "second base";
   char *pcValue;

   printf("------------------------------------------------------\n");
   printf("Testing the collision handling of a SymTable object\n");
   printf("assuming a hash table implementation, and assuming that\n");
   printf("the implementation uses the hash function from the\n");
   printf("assignment specification.\n");
   printf("No output should appear here:\n");
   fflush(
# 721 "testsymtable.c" 3 4
         stdout
# 721 "testsymtable.c"
               );

   oSymTable = SymTable_new();
   assure(oSymTable != 
# 724 "testsymtable.c" 3 4
  ((void *)0)
# 724 "testsymtable.c"
  , 724);




   iSuccessful = SymTable_put(oSymTable, "250", acCenterField);
   assure(iSuccessful, 730);

   iSuccessful = SymTable_put(oSymTable, "469", acCatcher);
   assure(iSuccessful, 733);

   iSuccessful = SymTable_put(oSymTable, "947", acFirstBase);
   assure(iSuccessful, 736);

   iSuccessful = SymTable_put(oSymTable, "1303", acRightField);
   assure(iSuccessful, 739);

   iSuccessful = SymTable_put(oSymTable, "2016", acRightField);
   assure(iSuccessful, 742);

   pcValue = SymTable_get(oSymTable, "250");
   assure(pcValue == acCenterField, 745);

   pcValue = SymTable_get(oSymTable, "469");
   assure(pcValue == acCatcher, 748);

   pcValue = SymTable_get(oSymTable, "947");
   assure(pcValue == acFirstBase, 751);

   pcValue = SymTable_get(oSymTable, "1303");
   assure(pcValue == acRightField, 754);

   pcValue = SymTable_get(oSymTable, "2016");
   assure(pcValue == acRightField, 757);

   pcValue = SymTable_remove(oSymTable, "947");
   assure(pcValue == acFirstBase, 760);

   pcValue = SymTable_remove(oSymTable, "2016");
   assure(pcValue == acRightField, 763);

   pcValue = SymTable_remove(oSymTable, "250");
   assure(pcValue == acCenterField, 766);

   pcValue = SymTable_get(oSymTable, "469");
   assure(pcValue == acCatcher, 769);

   pcValue = SymTable_get(oSymTable, "1303");
   assure(pcValue == acRightField, 772);

   SymTable_free(oSymTable);
}






static void testLargeTable(int iBindingCount)
{
   enum {MAX_KEY_LENGTH = 10};

   SymTable_T oSymTable;
   SymTable_T oSymTableSmall;
   char acKey[MAX_KEY_LENGTH];
   char *pcValue;
   int i;
   int iSmall;
   int iLarge;
   int iSuccessful;
   clock_t iInitialClock;
   clock_t iFinalClock;
   size_t uLength = 0;
   size_t uLength2;

   printf("------------------------------------------------------\n");
   printf("Testing a potentially large SymTable object.\n");
   printf("No output except CPU time consumed should appear here:\n");
   fflush(
# 802 "testsymtable.c" 3 4
         stdout
# 802 "testsymtable.c"
               );


   iInitialClock = clock();


   oSymTableSmall = SymTable_new();
   assure(oSymTableSmall != 
# 809 "testsymtable.c" 3 4
  ((void *)0)
# 809 "testsymtable.c"
  , 809);
   iSuccessful = SymTable_put(oSymTableSmall, "xxx", "xxx");
   assure(iSuccessful, 811);
   iSuccessful = SymTable_put(oSymTableSmall, "yyy", "yyy");
   assure(iSuccessful, 813);


   oSymTable = SymTable_new();
   assure(oSymTable != 
# 817 "testsymtable.c" 3 4
  ((void *)0)
# 817 "testsymtable.c"
  , 817);



   for (i = 0; i < iBindingCount; i++)
   {
      sprintf(acKey, "%d", i);
      pcValue = (char*)malloc(sizeof(char) * (strlen(acKey) + 1));
      assure(pcValue != 
# 825 "testsymtable.c" 3 4
     ((void *)0)
# 825 "testsymtable.c"
     , 825);
      strcpy(pcValue, acKey);
      iSuccessful = SymTable_put(oSymTable, acKey, pcValue);
      assure(iSuccessful, 828);
      uLength = SymTable_getLength(oSymTable);
      assure(uLength == (size_t)(i+1), 830);
   }



   iSmall = 0;
   iLarge = iBindingCount - 1;
   while (iSmall < iLarge)
   {

      sprintf(acKey, "%d", iSmall);
      pcValue = (char*)SymTable_get(oSymTable, acKey);
      assure(pcValue != 
# 842 "testsymtable.c" 3 4
     ((void *)0)
# 842 "testsymtable.c"
     , 842);
      assure((pcValue != 
# 843 "testsymtable.c" 3 4
     ((void *)0)
# 843 "testsymtable.c"
     ) && (strcmp(pcValue, acKey) == 0), 843);
      iSmall++;

      sprintf(acKey, "%d", iLarge);
      pcValue = (char*)SymTable_get(oSymTable, acKey);
      assure(pcValue != 
# 848 "testsymtable.c" 3 4
     ((void *)0)
# 848 "testsymtable.c"
     , 848);
      assure((pcValue != 
# 849 "testsymtable.c" 3 4
     ((void *)0)
# 849 "testsymtable.c"
     ) && (strcmp(pcValue, acKey) == 0), 849);
      iLarge--;
   }

   if (iSmall == iLarge)
   {
      sprintf(acKey, "%d", iSmall);
      pcValue = (char*)SymTable_get(oSymTable, acKey);
      assure(pcValue != 
# 857 "testsymtable.c" 3 4
     ((void *)0)
# 857 "testsymtable.c"
     , 857);
      assure((pcValue != 
# 858 "testsymtable.c" 3 4
     ((void *)0)
# 858 "testsymtable.c"
     ) && (strcmp(pcValue, acKey) == 0), 858);
   }


   iSmall = 0;
   iLarge = iBindingCount - 1;
   while (iSmall < iLarge)
   {

      sprintf(acKey, "%d", iSmall);
      pcValue = (char*)SymTable_remove(oSymTable, acKey);
      assure(pcValue != 
# 869 "testsymtable.c" 3 4
     ((void *)0)
# 869 "testsymtable.c"
     , 869);
      assure((pcValue != 
# 870 "testsymtable.c" 3 4
     ((void *)0)
# 870 "testsymtable.c"
     ) && (strcmp(pcValue, acKey) == 0), 870);
      free(pcValue);
      uLength--;
      uLength2 = SymTable_getLength(oSymTable);
      assure(uLength2 == uLength, 874);
      iSmall++;

      sprintf(acKey, "%d", iLarge);
      pcValue = (char*)SymTable_remove(oSymTable, acKey);
      assure(pcValue != 
# 879 "testsymtable.c" 3 4
     ((void *)0)
# 879 "testsymtable.c"
     , 879);
      assure((pcValue != 
# 880 "testsymtable.c" 3 4
     ((void *)0)
# 880 "testsymtable.c"
     ) && (strcmp(pcValue, acKey) == 0), 880);
      free(pcValue);
      uLength--;
      uLength2 = SymTable_getLength(oSymTable);
      assure(uLength2 == uLength, 884);
      iLarge--;
   }

   if (iSmall == iLarge)
   {
      sprintf(acKey, "%d", iSmall);
      pcValue = (char*)SymTable_remove(oSymTable, acKey);
      assure(pcValue != 
# 892 "testsymtable.c" 3 4
     ((void *)0)
# 892 "testsymtable.c"
     , 892);
      assure((pcValue != 
# 893 "testsymtable.c" 3 4
     ((void *)0)
# 893 "testsymtable.c"
     ) && (strcmp(pcValue, acKey) == 0), 893);
      free(pcValue);
      uLength--;
      uLength2 = SymTable_getLength(oSymTable);
      assure(uLength2 == uLength, 897);
   }



   pcValue = (char*)SymTable_get(oSymTableSmall, "xxx");
   assure((pcValue != 
# 903 "testsymtable.c" 3 4
  ((void *)0)
# 903 "testsymtable.c"
  ) && (strcmp(pcValue, "xxx") == 0), 903);
   pcValue = (char*)SymTable_get(oSymTableSmall, "yyy");
   assure((pcValue != 
# 905 "testsymtable.c" 3 4
  ((void *)0)
# 905 "testsymtable.c"
  ) && (strcmp(pcValue, "yyy") == 0), 905);


   SymTable_free(oSymTable);
   SymTable_free(oSymTableSmall);


   iFinalClock = clock();
   printf("CPU time (%d bindings):  %f seconds\n", iBindingCount,
      ((double)(iFinalClock - iInitialClock)) / 
# 914 "testsymtable.c" 3 4
                                               ((__clock_t) 1000000)
# 914 "testsymtable.c"
                                                             );
   fflush(
# 915 "testsymtable.c" 3 4
         stdout
# 915 "testsymtable.c"
               );
}
# 927 "testsymtable.c"
int main(int argc, char *argv[])
{
   int iBindingCount;

   if (argc != 2)
   {
      fprintf(
# 933 "testsymtable.c" 3 4
             stderr
# 933 "testsymtable.c"
                   , "Usage: %s bindingcount\n", argv[0]);
      exit(
# 934 "testsymtable.c" 3 4
          1
# 934 "testsymtable.c"
                      );
   }

   if (sscanf(argv[1], "%d", &iBindingCount) != 1)
   {
      fprintf(
# 939 "testsymtable.c" 3 4
             stderr
# 939 "testsymtable.c"
                   , "bindingcount must be numeric\n");
      exit(
# 940 "testsymtable.c" 3 4
          1
# 940 "testsymtable.c"
                      );
   }
   if (iBindingCount < 0)
   {
      fprintf(
# 944 "testsymtable.c" 3 4
             stderr
# 944 "testsymtable.c"
                   , "bindingcount cannot be negative\n");
      exit(
# 945 "testsymtable.c" 3 4
          1
# 945 "testsymtable.c"
                      );
   }


   setCpuTimeLimit();


   testBasics();
   testKeyComparison();
   testKeyOwnership();
   testRemove();
   testMap();
   testEmptyTable();
   testEmptyKey();
   testNullValue();
   testLongKey();
   testTableOfTables();
   testCollisions();
   testLargeTable(iBindingCount);

   printf("------------------------------------------------------\n");
   printf("End of %s.\n", argv[0]);
   return 0;
}
