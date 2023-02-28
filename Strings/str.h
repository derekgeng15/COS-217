/*--------------------------------------------------------------------*/
/* str.h                                                              */
/* Author: Derek Geng                                                 */
/*--------------------------------------------------------------------*/
#include <stdio.h>
#include <assert.h>

/* Return the length of string pcSrc. */
size_t Str_getLength(const char *pcSrc);

/* Copies pcSrc into pcDest 
   Returns a pointer to pcDest */
char *Str_copy(char *pcDest, const char *pcSrc);

/* Concatenates pcSrc to the end of pcDest
   Returns a pointer to pcDest */
char *Str_concat(char *pcDest, const char *pcSrc);

/* Returns negative if pcS1 < pcS2, 0 if pcS1 > pcS2, positive if pcS1 > pcS2 */
int Str_compare(const char *pcS1, const char *pcS2);

/* Returns a pointer to the first instance of substring 
   pcNeedle in pcHaystack */
char *Str_search(const char *pcHaystack, const char *pcNeedle);