//----------------------------------------------------------------------
// bigintaddoptopt.s
// Author: Emily Luo & Derek Geng
//----------------------------------------------------------------------

// making the enums 
        .equ    FALSE, 0
        .equ    TRUE, 1
        .equ    EOF, -1
        .equ    MAX_DIGITS, 32768
//----------------------------------------------------------------------
        
        .section .rodata

//----------------------------------------------------------------------

        .section .data

//----------------------------------------------------------------------

        .section .bss

//----------------------------------------------------------------------

        .section .text
        
        //--------------------------------------------------------------
        // Assign the sum of oAddend1 and oAddend2 to oSum.  
        // oSum should be distinct from oAddend1 and oAddend2.  
        // Return 0 (FALSE) if an overflow occurred, 
        // and 1 (TRUE) otherwise. 
        // int BigInt_add(BigInt_T oAddend1, BigInt_T oAddend2, 
        // BigInt_T oSum)
        //--------------------------------------------------------------

        // Must be a multiple of 16
        .equ    ADD_STACK_BYTECOUNT, 48

        // local variable registers
        LSUMLENGTH      .req x23
        LINDEX          .req x22

        // parameter registers
        OSUM            .req x21
        OADDEND2        .req x20
        OADDEND1        .req x19

        // structure field offsets
        .equ    AULDIGITS,  8
        
        .global BigInt_add

BigInt_add:

        // Prolog
        sub     sp, sp, ADD_STACK_BYTECOUNT
        str     x30, [sp]
        str     x19, [sp, 8]
        str     x20, [sp, 16]
        str     x21, [sp, 24]
        str     x22, [sp, 32]
        str     x23, [sp, 40]

        // store parameters in registers
        mov     OADDEND1, x0
        mov     OADDEND2, x1
        mov     OSUM, x2

        // unsigned long ulSum;
        // long lIndex;
        // long lSumLength;
        
        // Determine the larger length. Inline of BigInt_larger
        //  if (oAddend1->lLength <= oAddend2->lLength) goto elseIfLess;
        ldr     x0, [OADDEND1]
        ldr     x1, [OADDEND2]
        cmp     x0, x1
        ble     elseIfLess
        //  lSumLength = oAddend1->lLength;
        mov     LSUMLENGTH, x0
        //  goto endIfGreater;
        b       endIfGreater
elseIfLess:
        //  lSumLength = oAddend2->lLength;
        mov     LSUMLENGTH,  x1
        //  goto endIfGreater;
endIfGreater:
        // Clear oSum's array if necessary.

        // if (oSum->lLength <= lSumLength) goto endIfLength;
        ldr     x0, [OSUM]
        cmp     x0, LSUMLENGTH
        ble     endIfLength

    // memset(oSum->aulDigits, 0, MAX_DIGITS * sizeof(unsigned long));
        add     x0, OSUM, AULDIGITS
        mov     w1, 0
        mov     x2, MAX_DIGITS
        lsl     x2, x2, 3
        bl      memset
    
endIfLength:

        // lIndex = 0;
        mov     LINDEX, 0
        
// Perform the addition.

        // guarded loop, skip directly to endIfCarry, bc no carry bit
        // if (lIndex >= lSumLength) goto endIfCarry;
        cmp     LINDEX, LSUMLENGTH
        bge     endIfCarry
sumLoop:
        // oSum->aulDigits[lIndex] = oAddend1->aulDigits[lIndex] + 
        // oAddend2->aulDigits[lIndex] 
        add     x0, OADDEND1, AULDIGITS
        ldr     x0, [x0, LINDEX, lsl 3]
        add     x1, OADDEND2, AULDIGITS
        ldr     x1, [x1, LINDEX, lsl 3]
        // add with carry bit
        adcs    x1, x0, x1
        // save to oSum
        add     x0, OSUM, AULDIGITS
        str     x1, [x0, LINDEX, lsl 3]
        
        // lIndex++;
        add     LINDEX, LINDEX, 1

        // perform compare without triggering C flag
        // if (lIndex < lSumLength) goto sumLoop;
        sub    x0, LSUMLENGTH, LINDEX
        CBNZ   x0, sumLoop

endSumLoop:
        // Check for a carry out of the last "column" of the addition.

        // if (C == 0) goto endIfCarry;
        bcc     endIfCarry

        // if (lSumLength != MAX_DIGITS) goto endIfMax;
        cmp     LSUMLENGTH, MAX_DIGITS
        bne     endIfMax

        // return false
        mov     w0, FALSE
        ldr     x30, [sp]
        ldr     x19, [sp, 8]
        ldr     x20, [sp, 16]
        ldr     x21, [sp, 24]
        ldr     x22, [sp, 32]
        ldr     x23, [sp, 40]
        add     sp, sp, ADD_STACK_BYTECOUNT
        ret

endIfMax:
        // oSum->aulDigits[lSumLength] = 1;
        add     x0, OSUM, AULDIGITS
        mov     x2, 1
        str     x2, [x0, LSUMLENGTH, lsl 3]

        // lSumLength++;
        add     LSUMLENGTH, LSUMLENGTH, 1

endIfCarry:
        // Set the length of the sum.
        // oSum->lLength = lSumLength;  
        str     LSUMLENGTH, [OSUM]

        // Epilog return true
        mov     w0, TRUE
        ldr     x30, [sp]
        ldr     x19, [sp, 8]
        ldr     x20, [sp, 16]
        ldr     x21, [sp, 24]
        ldr     x22, [sp, 32]
        ldr     x23, [sp, 40]
        add     sp, sp, ADD_STACK_BYTECOUNT
        ret
.size   BigInt_add, (. -BigInt_add)
