/*--------------------------------------------------------------------*/
/* mywcf.c                                                            */
/* Author: Emily Luo & Derek Geng                                     */
/*--------------------------------------------------------------------*/

#include <stdio.h>
#include <ctype.h>

/*--------------------------------------------------------------------*/

/* In lieu of a boolean data type. */
enum {FALSE, TRUE};

/*--------------------------------------------------------------------*/

static long lLineCount = 0;      /* Bad style. */
static long lWordCount = 0;      /* Bad style. */
static long lCharCount = 0;      /* Bad style. */
static int iChar;                /* Bad style. */
static int iInWord = FALSE;      /* Bad style. */

/*--------------------------------------------------------------------*/

/* Write to stdout counts of how many lines, words, and characters
   are in stdin. A word is a sequence of non-whitespace characters.
   Whitespace is defined by the isspace() function. Return 0. */

int main(void)
{
inputLoop:
    iChar = getchar();
    if (iChar == EOF) goto endInputLoop;
    lCharCount++;

    if (! isspace(iChar)) goto elseNotSpace;
    if (! iInWord) goto endIfSpace;
    lWordCount++;
    iInWord = FALSE;
    goto endIfSpace;
    elseNotSpace:
        if (iInWord) goto endIfSpace;
        iInWord = TRUE;
        goto endIfSpace;
    endIfSpace: 
        if (iChar != '\n') goto inputLoop;
        lLineCount++;
        goto inputLoop; 

endInputLoop:
    if (! iInWord) goto endIfInWord;
    lWordCount++;
    goto endIfInWord;
endIfInWord:
    printf("%7ld %7ld %7ld\n", lLineCount, lWordCount, lCharCount);
    return 0;
    
}
