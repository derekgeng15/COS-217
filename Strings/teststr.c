/*--------------------------------------------------------------------*/
/* teststr.c                                                          */
/* Author: Bob Dondero                                                */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#ifndef S_SPLINT_S
#include <sys/resource.h>
#endif

/* The number of stress tests to perform for each function. */
enum {STRESS_TEST_COUNT = 10};

/* The size of stress test strings. */
enum {STRESS_STRING_SIZE = 1000};

/*--------------------------------------------------------------------*/

#define ASSURE(i) assure(i, __LINE__)

/*--------------------------------------------------------------------*/

/* If !iSuccessful, print an error message indicating that the test
   at line iLineNum failed. */

static void assure(int iSuccessful, int iLineNum)
{
   if (! iSuccessful)
   {
      printf("      Test at line %d failed.\n", iLineNum);
      fflush(stdout);
   }
}

/*--------------------------------------------------------------------*/

#ifndef S_SPLINT_S
/* Set the process's "CPU time" resource limit.  After the CPU
   time limit expires, the OS will send a SIGKILL signal to the
   process. */

static void setCpuTimeLimit(void)
{
   enum {CPU_TIME_LIMIT_IN_SECONDS = 60};
   struct rlimit sRlimit;
   sRlimit.rlim_cur = CPU_TIME_LIMIT_IN_SECONDS;
   sRlimit.rlim_max = CPU_TIME_LIMIT_IN_SECONDS;
   setrlimit(RLIMIT_CPU, &sRlimit);
}
#endif

/*--------------------------------------------------------------------*/

/* Populate pcStr, which points to an array of at least iSize
   characters, with iSize-1 random ASCII characters followed by
   a '\0' character. */

static void randomString(char *pcStr, int iSize)
{
   int i;
   assert(pcStr != NULL);
   assert(iSize > 0);
   for (i = 0; i < iSize-1; i++)
      pcStr[i] = (char)(((unsigned int)rand()) & 0x7f);
   pcStr[iSize-1] = '\0';
}

/*--------------------------------------------------------------------*/

/* Test the Str_getLength() function. */

static void testGetLength(void)
{
   size_t uResult1;
   size_t uResult2;

   printf("Testing Str_getLength()\n");
   fflush(stdout);

   printf("   Boundary Tests\n");
   fflush(stdout);

   {
      const char acSrc[] = {'\0', 's'};
      uResult1 = Str_getLength(acSrc);
      uResult2 = strlen(acSrc);
      ASSURE(uResult1 == uResult2);
   }

   printf("   Statement Tests\n");
   fflush(stdout);

   {
      const char acSrc[] = {'R', 'u', 't', 'h', '\0', '\0'};
      uResult1 = Str_getLength(acSrc);
      uResult2 = strlen(acSrc);
      ASSURE(uResult1 == uResult2);
   }

   {
      const char acSrc[] = {'R', 'u', 't', 'h', '\0', 's'};
      uResult1 = Str_getLength(acSrc);
      uResult2 = strlen(acSrc);
      ASSURE(uResult1 == uResult2);
   }

   {
      const char acSrc[] = {'G', 'e', 'h', 'r', 'i', 'g', '\0', 's'};
      uResult1 = Str_getLength(acSrc);
      uResult2 = strlen(acSrc);
      ASSURE(uResult1 == uResult2);
   }

   printf("   Stress Tests\n");
   fflush(stdout);

   {
      int i;
      char acSrc[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc, STRESS_STRING_SIZE);
         uResult1 = Str_getLength(acSrc);
         uResult2 = strlen(acSrc);
         ASSURE(uResult1 == uResult2);
      }
   }
}

/*--------------------------------------------------------------------*/

/* Test the Str_copy() function. */

static void testCopy(void)
{
   char *pcResult;

   printf("Testing Str_copy()\n");

   printf("   Boundary Tests\n");
   fflush(stdout);

   {
      const char acSrc[] = {'\0', 's'};
      char acDest1[] = {'d', 'd'};
      char acDest2[] = {'d', 'd'};
      pcResult = Str_copy(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcpy(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   {
      const char acSrc[] = {'\0', 's'};
      char acDest1[] = {'\0', 'd'};
      char acDest2[] = {'\0', 'd'};
      pcResult = Str_copy(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcpy(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   printf("   Statement Tests\n");
   fflush(stdout);

   {
      const char acSrc[] = {'R', 'u', 't', 'h', '\0', 's'};
      char acDest1[] = {'d', 'd', 'd', 'd', 'd', 'd'};
      char acDest2[] = {'d', 'd', 'd', 'd', 'd', 'd'};
      pcResult = Str_copy(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcpy(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   {
      const char acSrc[] = {'G', 'e', 'h', 'r', 'i', 'g', '\0', 's'};
      char acDest1[] = {'d', 'd', 'd', 'd', 'd', 'd', 'd', 'd'};
      char acDest2[] = {'d', 'd', 'd', 'd', 'd', 'd', 'd', 'd'};
      pcResult = Str_copy(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcpy(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   {
      const char acSrc[] = {'R', 'u', 't', 'h', '\0', 's'};
      char acDest1[] = {'\0', 'd', 'd', 'd', 'd', 'd'};
      char acDest2[] = {'\0', 'd', 'd', 'd', 'd', 'd'};
      pcResult = Str_copy(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcpy(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   printf("   Stress Tests\n");
   fflush(stdout);

   {
      int i;
      char acSrc[STRESS_STRING_SIZE];
      char acDest1[STRESS_STRING_SIZE];
      char acDest2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc, STRESS_STRING_SIZE);
         randomString(acDest1, STRESS_STRING_SIZE);
         memcpy(acDest2, acDest1, STRESS_STRING_SIZE);
         pcResult = Str_copy(acDest1, acSrc);
         ASSURE(pcResult == acDest1);
         (void)strcpy(acDest2, acSrc);
         ASSURE(memcmp(acDest1, acDest2, STRESS_STRING_SIZE) == 0);
      }
   }
}

/*--------------------------------------------------------------------*/

/* Test the Str_concat() function. */

static void testConcat(void)
{
   char *pcResult;

   printf("Testing Str_concat()\n");

   printf("   Boundary Tests\n");
   fflush(stdout);

   {
      const char acSrc[] = {'\0', 's', 's', 's', 's', 's'};
      char acDest1[] = {'\0', 'd', 'd', 'd', 'd', 'd'};
      char acDest2[] = {'\0', 'd', 'd', 'd', 'd', 'd'};
      pcResult = Str_concat(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcat(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   {
      const char acSrc[] = {'R', 'u', 't', 'h', '\0', 's'};
      char acDest1[] = {'\0', 'd', 'd', 'd', 'd', 'd'};
      char acDest2[] = {'\0', 'd', 'd', 'd', 'd', 'd'};
      pcResult = Str_concat(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcat(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   {
      const char acSrc[] = {'\0', 's', 's', 's', 's', 's'};
      char acDest1[] = {'R', 'u', 't', 'h', '\0', 'd'};
      char acDest2[] = {'R', 'u', 't', 'h', '\0', 'd'};
      pcResult = Str_concat(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcat(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   printf("   Statement Tests\n");
   fflush(stdout);

   {
      const char acSrc[] = {'R', 'u', 't', 'h', '\0', 's'};
      char acDest1[] =
         {'B', 'a', 'b', 'e', '\0', 'd', 'd', 'd', 'd', 'd'};
      char acDest2[] =
         {'B', 'a', 'b', 'e', '\0', 'd', 'd', 'd', 'd', 'd'};
      pcResult = Str_concat(acDest1, acSrc);
      ASSURE(pcResult == acDest1);
      (void)strcat(acDest2, acSrc);
      ASSURE(memcmp(acDest1, acDest2, sizeof(acDest1)) == 0);
   }

   printf("   Stress Tests\n");
   fflush(stdout);

   {
      int i;
      char acSrc[STRESS_STRING_SIZE];
      char acDest1[STRESS_STRING_SIZE] = {'\0'};
      char acDest2[STRESS_STRING_SIZE] = {'\0'};
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc, STRESS_STRING_SIZE/2);
         randomString(acDest1, STRESS_STRING_SIZE/2);
         memcpy(acDest2, acDest1, STRESS_STRING_SIZE);
         pcResult = Str_concat(acDest1, acSrc);
         ASSURE(pcResult == acDest1);
         (void)strcat(acDest2, acSrc);
         ASSURE(memcmp(acDest1, acDest2, STRESS_STRING_SIZE) == 0);
      }
   }
}

/*--------------------------------------------------------------------*/

/* Return -1, 0, or 1 if i is negative, 0, or positive respectively. */

static int sign(int i)
{
   if (i < 0) return -1;
   if (i > 0) return 1;
   return 0;
}

/*--------------------------------------------------------------------*/

/* Test the Str_compare() function. */

static void testCompare(void)
{
   int iResult1;
   int iResult2;

   printf("Testing Str_compare()\n");

   printf("   Boundary Tests\n");
   fflush(stdout);

   {
      const char acSrc1[] = {'\0', 'x', 'x', 'x', 'x', 'x'};
      const char acSrc2[] = {'\0', 'y', 'y', 'y', 'y', 'y'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'\0', 'x', 'x', 'x', 'x', 'x'};
      const char acSrc2[] = {'R', 'u', 't', 'h', '\0', 'y'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'R', 'u', 't', 'h', '\0', 'y'};
      const char acSrc2[] = {'\0', 'x', 'x', 'x', 'x', 'x'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   printf("   Statement Tests\n");
   fflush(stdout);

   {
      const char acSrc1[] = {'R', 'u', 't', 'h', '\0', 'x'};
      const char acSrc2[] = {'R', 'u', 't', 'h', '\0', 'y'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'R', 'o', 't', 'h', '\0', 'y'};
      const char acSrc2[] = {'R', 'u', 't', 'h', '\0', 'x'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'R', 'u', 't', 'h', '\0', 'x'};
      const char acSrc2[] = {'R', 'o', 't', 'h', '\0', 'y'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'R', 'u', 't', 'h', '\0', 'y'};
      const char acSrc2[] = {'r', 'u', 't', 'h', '\0', 'x'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'r', 'u', 't', 'h', '\0', 'x'};
      const char acSrc2[] = {'R', 'u', 't', 'h', '\0', 'y'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'B', 'a', 'b', 'e', '\0', 'y'};
      const char acSrc2[] =
         {'B', 'a', 'b', 'e', 'R', 'u', 't', 'h', '\0', 'x'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] =
         {'B', 'a', 'b', 'e', 'R', 'u', 't', 'h', '\0', 'x'};
      const char acSrc2[] = {'B', 'a', 'b', 'e', '\0', 'y'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'x', 'y', '\0', 'z', 'z', 'z'};
      const char acSrc2[] = {'y', 'x', '\0', 'z', 'z', 'z'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'y', 'x', '\0', 'z', 'z', 'z'};
      const char acSrc2[] = {'x', 'y', '\0', 'z', 'z', 'z'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'x', 'x', '\0', 'z', 'z', 'z'};
      const char acSrc2[] = {'y', '\0', 'z', 'z', 'z', 'z'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'y', '\0', 'z', 'z', 'z', 'z'};
      const char acSrc2[] = {'x', 'x', '\0', 'z', 'z', 'z'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   {
      const char acSrc1[] = {'x', 'y', 'y', '\0', 'z', 'z'};
      const char acSrc2[] = {'y', 'x', 'x', '\0', 'z', 'z'};
      iResult1 = Str_compare(acSrc1, acSrc2);
      iResult2 = strcmp(acSrc1, acSrc2);
      ASSURE(sign(iResult1) == sign(iResult2));
   }

   printf("   Stress Tests\n");
   fflush(stdout);

   {
      int i;
      char acSrc1[STRESS_STRING_SIZE];
      char acSrc2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc1, STRESS_STRING_SIZE);
         randomString(acSrc2, STRESS_STRING_SIZE);
         iResult1 = Str_compare(acSrc1, acSrc2);
         iResult2 = strcmp(acSrc1, acSrc2);
         ASSURE(sign(iResult1) == sign(iResult2));
      }
   }
}

/*--------------------------------------------------------------------*/

/* Test the Str_search() function. */

static void testSearch(void)
{
   const char *pcResult1;
   const char *pcResult2;

   printf("Testing Str_search()\n");

   printf("   Boundary Tests\n");
   fflush(stdout);

   {
      const char acHaystack[] = "";
      const char acNeedle[] = "";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "";
      const char acNeedle[] = "abcde";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   printf("   Statement Tests\n");
   fflush(stdout);

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "d";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "cd";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "bcde";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "abcde";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "abcdf";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

      {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "bcdef";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aab";
      const char acNeedle[] = "ab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaab";
      const char acNeedle[] = "ab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaab";
      const char acNeedle[] = "aab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaaab";
      const char acNeedle[] = "aab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaaaab";
      const char acNeedle[] = "aab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaaab";
      const char acNeedle[] = "aaab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaaaab";
      const char acNeedle[] = "aaab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaaaaab";
      const char acNeedle[] = "aaab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaaaaaab";
      const char acNeedle[] = "aaab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcdefg";
      const char acNeedle[] = "abcg";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "abcde";
      const char acNeedle[] = "abcdefg";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aababaab";
      const char acNeedle[] = "abaab";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   {
      const char acHaystack[] = "aaa";
      const char acNeedle[] = "a";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

      {
      const char acHaystack[] = "aabbcc";
      const char acNeedle[] = "abc";
      pcResult1 = Str_search(acHaystack, acNeedle);
      pcResult2 = strstr(acHaystack, acNeedle);
      ASSURE(pcResult1 == pcResult2);
   }

   printf("   Stress Tests\n");
   fflush(stdout);

   {
      int i;
      char acSrc1[STRESS_STRING_SIZE];
      char acSrc2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc1, STRESS_STRING_SIZE);
         randomString(acSrc2, 1);
         pcResult1 = Str_search(acSrc1, acSrc2);
         pcResult2 = strstr(acSrc1, acSrc2);
         ASSURE(pcResult1 == pcResult2);
      }
   }

   {
      int i;
      char acSrc1[STRESS_STRING_SIZE];
      char acSrc2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc1, STRESS_STRING_SIZE);
         randomString(acSrc2, 2);
         pcResult1 = Str_search(acSrc1, acSrc2);
         pcResult2 = strstr(acSrc1, acSrc2);
         ASSURE(pcResult1 == pcResult2);
      }
   }

   {
      int i;
      char acSrc1[STRESS_STRING_SIZE];
      char acSrc2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc1, STRESS_STRING_SIZE);
         randomString(acSrc2, 3);
         pcResult1 = Str_search(acSrc1, acSrc2);
         pcResult2 = strstr(acSrc1, acSrc2);
         ASSURE(pcResult1 == pcResult2);
      }
   }

   {
      int i;
      char acSrc1[STRESS_STRING_SIZE];
      char acSrc2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc1, STRESS_STRING_SIZE);
         randomString(acSrc2, 4);
         pcResult1 = Str_search(acSrc1, acSrc2);
         pcResult2 = strstr(acSrc1, acSrc2);
         ASSURE(pcResult1 == pcResult2);
      }
   }

   {
      int i;
      char acSrc1[STRESS_STRING_SIZE];
      char acSrc2[STRESS_STRING_SIZE];
      for (i = 0; i < STRESS_TEST_COUNT; i++)
      {
         randomString(acSrc1, STRESS_STRING_SIZE);
         randomString(acSrc2, 5);
         pcResult1 = Str_search(acSrc1, acSrc2);
         pcResult2 = strstr(acSrc1, acSrc2);
         ASSURE(pcResult1 == pcResult2);
      }
   }
}

/*--------------------------------------------------------------------*/

/* Test the Str module.  As always, argc is the command-line argument
   count, argv contains the command-line arguments, and argv[0] is the
   name of the executable binary file.  Return 0. */

int main(int argc, char *argv[])
{

#ifndef S_SPLINT_S
   setCpuTimeLimit();
#endif

   testGetLength();
   testCopy();
   testConcat();
   testCompare();
   testSearch();

   printf("End of %s.\n", argv[0]);
   return 0;
}
