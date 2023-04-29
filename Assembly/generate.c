/*--------------------------------------------------------------------*/
/* generate.c                                                         */
/* Author: Emily Luo & Derek Geng                                     */
/*--------------------------------------------------------------------*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

enum {MAX_CHAR = 50000, MAX_LINES = 1000, MAX_WORDS = 100, NUM_GEN = 3};

/* Generates a valid character and writes to stdout */
void genCharacter() {
    char c = 0;
    while(!(c == 0x9 || c == 0xA || c >= 0x20 && c <= 0x7E) || c =='\n')
        c = rand() % 0x7E;
    putc(c, stdout);
}


/* Write to stdout random max characters, pipe into a file.
    Returns 0 if successful */
int main() {
    int numLines;
    int remainingChar;
    int line;
    int i;
    time_t t;
    srand((unsigned) time(&t));
    numLines = MAX_LINES;
    remainingChar = MAX_CHAR;
    for (line = 0; line < numLines && remainingChar; line++) { 
        int numWords = rand() % MAX_WORDS;
        int currWords = 0;
        for (; currWords < numWords && remainingChar; currWords++) {
            int numChars =  rand() % remainingChar;
            int currChar = 0;
            remainingChar -= numChars;
            for (; currChar < numChars; currChar++) 
                genCharacter();
            /* write space if characters remaining */
            if(remainingChar){
                putc(' ', stdout);
                remainingChar--;
            }
        }
        /* write newline if characters remaining */
        if(remainingChar){
            putc('\n', stdout);
            remainingChar--;
        }
    }
    return 0;
}

