# 1 "stra.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "stra.c"




# 1 "str.h" 1




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
# 216 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4

# 216 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stdarg.h" 1 3 4
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

# 6 "str.h" 2
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



# 7 "str.h" 2



# 9 "str.h"
size_t Str_getLength(const char *pcSrc);



char *Str_copy(char *pcDest, const char *pcSrc);



char *Str_concat(char *pcDest, const char *pcSrc);


int Str_compare(const char *pcS1, const char *pcS2);



char *Str_search(const char *pcHaystack, const char *pcNeedle);
# 6 "stra.c" 2

size_t Str_getLength(const char pcSrc[])
{
    size_t uLength = 0;
    
# 10 "stra.c" 3 4
   ((
# 10 "stra.c"
   pcSrc != 
# 10 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 10 "stra.c"
   "pcSrc != NULL"
# 10 "stra.c" 3 4
   , "stra.c", 10, __extension__ __PRETTY_FUNCTION__))
# 10 "stra.c"
                        ;

    while (pcSrc[uLength] != '\0')
        uLength++;
    return uLength;
}

char *Str_copy(char pcDest[], const char pcSrc[]) {
    int i = 0;
    
# 19 "stra.c" 3 4
   ((
# 19 "stra.c"
   pcDest != 
# 19 "stra.c" 3 4
   ((void *)0) 
# 19 "stra.c"
   && pcSrc != 
# 19 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 19 "stra.c"
   "pcDest != NULL && pcSrc != NULL"
# 19 "stra.c" 3 4
   , "stra.c", 19, __extension__ __PRETTY_FUNCTION__))
# 19 "stra.c"
                                          ;

    while (pcSrc[i] != '\0') {

        pcDest[i] = pcSrc[i];
        i++;
    }
    pcDest[i] = '\0';
    return pcDest;
}

char *Str_concat(char pcDest[], const char pcSrc[]) {
    int i = 0;
    int j = 0;
    
# 33 "stra.c" 3 4
   ((
# 33 "stra.c"
   pcDest != 
# 33 "stra.c" 3 4
   ((void *)0) 
# 33 "stra.c"
   && pcSrc != 
# 33 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 33 "stra.c"
   "pcDest != NULL && pcSrc != NULL"
# 33 "stra.c" 3 4
   , "stra.c", 33, __extension__ __PRETTY_FUNCTION__))
# 33 "stra.c"
                                          ;
    while (pcDest[i] != '\0') i++;

    while (pcSrc[j] != '\0') pcDest[i++] = pcSrc[j++];
    pcDest[i] = '\0';
    return pcDest;
}

int Str_compare(const char pcS1[], const char pcS2[]) {
    int i = 0;
    
# 43 "stra.c" 3 4
   ((
# 43 "stra.c"
   pcS1 != 
# 43 "stra.c" 3 4
   ((void *)0) 
# 43 "stra.c"
   && pcS2 != 
# 43 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 43 "stra.c"
   "pcS1 != NULL && pcS2 != NULL"
# 43 "stra.c" 3 4
   , "stra.c", 43, __extension__ __PRETTY_FUNCTION__))
# 43 "stra.c"
                                       ;

    while (pcS1[i] == pcS2[i]) {

        if (pcS1[i] == '\0')
            return 0;
        i++;
    }

    return (int)(pcS1[i] - pcS2[i]);
}

char *Str_search(const char pcHaystack[], const char pcNeedle[]) {
    int i = 0;
    int j = 0;
    
# 58 "stra.c" 3 4
   ((
# 58 "stra.c"
   pcHaystack != 
# 58 "stra.c" 3 4
   ((void *)0) 
# 58 "stra.c"
   && pcNeedle != 
# 58 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 58 "stra.c"
   "pcHaystack != NULL && pcNeedle != NULL"
# 58 "stra.c" 3 4
   , "stra.c", 58, __extension__ __PRETTY_FUNCTION__))
# 58 "stra.c"
                                                 ;
    if (pcNeedle[0] == '\0')
        return (char *)pcHaystack;

    while (pcHaystack[i] != '\0') {
        j = 0;

        while (pcNeedle[j] != '\0' && pcHaystack[i + j] != '\0'
                && pcHaystack[i + j] == pcNeedle[j])
            j++;

        if (pcNeedle[j] == '\0')
            return (char *)(&pcHaystack[i]);
        i++;
    }

    return 
# 74 "stra.c" 3 4
          ((void *)0)
# 74 "stra.c"
              ;
}
