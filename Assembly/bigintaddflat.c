/*--------------------------------------------------------------------*/
/* bigintaddflat.c                                                    */
/* Author: Emily Luo & Derek Geng                                     */
/*--------------------------------------------------------------------*/

#include "bigint.h"
#include "bigintprivate.h"
#include <string.h>
#include <assert.h>

/* In lieu of a boolean data type. */
enum {FALSE, TRUE};

/*--------------------------------------------------------------------*/

/* Return the larger of lLength1 and lLength2. */

static long BigInt_larger(long lLength1, long lLength2) 
{
    long lLarger;

    if (lLength1 <= lLength2) goto elseIfLess;
    lLarger = lLength1;
    goto endIfGreater;
elseIfLess:
    lLarger = lLength2;
    goto endIfGreater;
endIfGreater:
    return lLarger;
}

/* Assign the sum of oAddend1 and oAddend2 to oSum.  oSum should be
   distinct from oAddend1 and oAddend2.  Return 0 (FALSE) if an
   overflow occurred, and 1 (TRUE) otherwise. */

int BigInt_add(BigInt_T oAddend1, BigInt_T oAddend2, BigInt_T oSum)
{
    unsigned long ulCarry;
    unsigned long ulSum;
    long lIndex;
    long lSumLength;

    /* Determine the larger length. */
   lSumLength = BigInt_larger(oAddend1->lLength, oAddend2->lLength);

    /* Clear oSum's array if necessary. */
   if (oSum->lLength <= lSumLength) goto endIfLength;
   memset(oSum->aulDigits, 0, MAX_DIGITS * sizeof(unsigned long));

/* Perform the addition. */
endIfLength: 
    ulCarry = 0; 
    lIndex = 0;
sumLoop:
    if (lIndex >= lSumLength) goto endSumLoop;
    ulSum = ulCarry;
    ulCarry = 0;

    ulSum += oAddend1->aulDigits[lIndex];

        /* Check for overflow. */
        if (ulSum >= oAddend1->aulDigits[lIndex]) goto endIfOverflow1;
        ulCarry = 1; 
    endIfOverflow1:
        ulSum += oAddend2->aulDigits[lIndex];
        /* Check for overflow. */
        if (ulSum >= oAddend2->aulDigits[lIndex]) goto endIfOverflow2;
        ulCarry = 1;
    endIfOverflow2:
    oSum->aulDigits[lIndex] = ulSum;
    lIndex++;
    goto sumLoop;
endSumLoop:
   /* Check for a carry out of the last "column" of the addition. */
    if (ulCarry != 1) goto endIfCarry;
        if (lSumLength != MAX_DIGITS) goto endIfMax;
        return FALSE;
    endIfMax:
        oSum->aulDigits[lSumLength] = 1;
        lSumLength++;
endIfCarry:
    /* Set the length of the sum. */
    oSum->lLength = lSumLength;

    return TRUE;
}