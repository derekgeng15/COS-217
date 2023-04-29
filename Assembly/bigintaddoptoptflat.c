/*--------------------------------------------------------------------*/
/* bigintaddoptoptflat.c                                                        */
/* Author: Derek Geng & Emily Luo                                                */
/*--------------------------------------------------------------------*/

#include "bigint.h"
#include "bigintprivate.h"
#include <string.h>
#include <assert.h>

/* In lieu of a boolean data type. */
enum {FALSE, TRUE};

/*--------------------------------------------------------------------*/
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
    if (oAddend1->lLength <= oAddend2->lLength) goto elseIfLess;
    lSumLength = oAddend1->lLength;
    goto endIfGreater;
elseIfLess:
    lSumLength = oAddend2->lLength;
    goto endIfGreater;
endIfGreater:
    if (oSum->lLength <= lSumLength) goto endIfLength;
    memset(oSum->aulDigits, 0, MAX_DIGITS * sizeof(unsigned long));
endIfLength: 
    ulCarry = 0; 
    lIndex = 0;
    if (lIndex >= lSumLength) goto endSumLoop;
sumLoop:
    ulSum = ulCarry;
    ulCarry = 0;

    ulSum += oAddend1->aulDigits[lIndex];

    if (ulSum >= oAddend1->aulDigits[lIndex]) goto endIfOverflow1;
    ulCarry = 1; 
endIfOverflow1:
    ulSum += oAddend2->aulDigits[lIndex];
    if (ulSum >= oAddend2->aulDigits[lIndex]) goto endIfOverflow2;
    ulCarry = 1;
endIfOverflow2:
    oSum->aulDigits[lIndex] = ulSum;
    lIndex++;
    if (lIndex < lSumLength) goto sumLoop;
    goto endSumLoop;
endSumLoop:
    if (ulCarry != 1) goto endIfCarry;
    if (lSumLength != MAX_DIGITS) goto endIfMax;
    return FALSE;
endIfMax:
    oSum->aulDigits[lSumLength] = 1;
    lSumLength++;
endIfCarry:
    oSum->lLength = lSumLength;
    return TRUE;
}