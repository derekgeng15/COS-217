//----------------------------------------------------------------------
// mywc.s
// Author: Emily Luo & Derek Geng
//----------------------------------------------------------------------

// making the enums 
        .equ    FALSE, 0
        .equ    TRUE, 1
        .equ    EOF, -1
//----------------------------------------------------------------------
        .section .rodata

printfFormatStr:
        .string "%7ld %7ld %7ld\n"

//----------------------------------------------------------------------

        .section .data

lLineCount:
        .quad   0
lWordCount:
        .quad   0
lCharCount:
        .quad   0
iInWord:
        .word   FALSE

//----------------------------------------------------------------------

        .section .bss

iChar:
        .skip   4

//----------------------------------------------------------------------

        .section .text

        //--------------------------------------------------------------
        // Write to stdout counts of how many lines, words, and 
        // characters are in stdin. A word is a sequence of 
        // non-whitespace characters. Whitespace is defined by the 
        // isspace() function. Return 0. 
        // int main(void)
        //--------------------------------------------------------------

        // Must be a multiple of 16
        .equ    MAIN_STACK_BYTECOUNT, 16

        .global main

main:
        
        // Prolog
        sub     sp, sp, MAIN_STACK_BYTECOUNT
        str     x30, [sp]

inputLoop: 
        // iChar = getchar()
        bl      getchar
        adr     x1, iChar
        str     w0, [x1]
        // if (iChar == EOF) goto endInputLoop;
        adr     x0, iChar
        ldr     w0, [x0]
        cmp     w0, EOF
        beq     endInputLoop
        // lCharCount++
        adr     x0, lCharCount
        ldr     x1, [x0]
        add     x1, x1, 1
        str     x1, [x0]
        // if (! isspace(iChar)) goto elseNotSpace;
        adr     x0, iChar
        ldr     w0, [x0]
        bl      isspace
        cmp     w0, FALSE
        beq     elseNotSpace
        // if (! iInWord) goto endIfSpace;
        adr     x0, iInWord
        ldr     w0, [x0]
        cmp     w0, TRUE
        bne     endIfSpace
        // lWordCount++
        adr     x0, lWordCount
        ldr     x1, [x0]
        add     x1, x1, 1
        str     x1, [x0]
        // iInWord = FALSE;
        adr     x0, iInWord
        mov     w1, FALSE
        str     w1, [x0]
        bl      endIfSpace
        
elseNotSpace:
        // if (iInWord) goto endIfSpace;
        adr     x0, iInWord
        ldr     w0, [x0]
        cmp     w0, TRUE
        beq     endIfSpace
        // iInWord = TRUE;
        adr     x0, iInWord
        mov     w1, TRUE
        str     w1, [x0]
        bl      endIfSpace
        
endIfSpace:
        // if (iChar != '\n') goto inputLoop;
        adr     x0, iChar
        ldr     w0, [x0]
        cmp     w0, '\n'
        bne     inputLoop
        // lLineCount++;
        adr     x0, lLineCount
        ldr     x1, [x0]
        add     x1, x1, 1
        str     x1, [x0]
        // goto inputLoop; 
        bl      inputLoop

endInputLoop:
        // if (! iInWord) goto endIfInWord;
        adr     x0, iInWord
        ldr     w0, [x0]
        cmp     w0, TRUE
        bne     endIfInWord

        //  lWordCount++;
        adr     x0, lWordCount
        ldr     x1, [x0]
        add     x1, x1, 1
        str     x1, [x0] 

endIfInWord:
        // printf("%7ld %7ld %7ld\n", lLineCount, lWordCount, lCharCount);
        adr     x0, printfFormatStr
        adr     x1, lLineCount
        ldr     x1, [x1]
        adr     x2, lWordCount
        ldr     x2, [x2]
        adr     x3, lCharCount
        ldr     x3, [x3]
        bl      printf
       
        // Epilog and return 0
        mov     w0, 0
        ldr     x30, [sp]
        add     sp, sp, MAIN_STACK_BYTECOUNT
        ret

        .size   main, (. - main)

        


