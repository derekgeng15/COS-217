//----------------------------------------------------------------------
// bigintaddopt.s
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
        // Return the larger of lLength1 and lLength2.
        // long BigInt_larger(long lLength1, long lLength2) 
        //--------------------------------------------------------------

        // Must be a multiple of 16
        .equ    LARGER_STACK_BYTECOUNT, 32

        // local variable registers
        LLARGER         .req x21

        // parameter registers:
        LLENGTH2        .req x20
        LLENGTH1        .req x19

BigInt_larger: 

        // Prolog
        sub     sp, sp, LARGER_STACK_BYTECOUNT
        str     x30, [sp]
        str     x19, [sp, 8]
        str     x20, [sp, 16]
        str     x21, [sp, 24]

        // Store parameters in registers
        mov     LLENGTH1, x0
        mov     LLENGTH2, x1

        // long lLarger

        // if (lLength1 <= lLength2) goto elseIfLess;
        cmp     LLENGTH1, LLENGTH2
        bls     elseIfLess

        // lLarger = lLength1;
        mov     LLARGER, LLENGTH1
        
        // goto endIfGreater;
        b       endIfGreater

elseIfLess:

        // lLarger = lLength2;
        mov     LLARGER, LLENGTH2
        // goto endIfGreater;
        b       endIfGreater

endIfGreater:

        // Epilog and return lLarger
        mov     x0, LLARGER
        ldr     x30, [sp]
        ldr     x19, [sp, 8]
        ldr     x20, [sp, 16]
        ldr     x21, [sp, 24]
        add     sp, sp, LARGER_STACK_BYTECOUNT
        ret

.size   BigInt_larger, (. - BigInt_larger)
        
        //--------------------------------------------------------------
        // Assign the sum of oAddend1 and oAddend2 to oSum.  
        // oSum should be distinct from oAddend1 and oAddend2.  
        // Return 0 (FALSE) if an overflow occurred, 
        // and 1 (TRUE) otherwise. 
        // int BigInt_add(BigInt_T oAddend1, BigInt_T oAddend2, 
        // BigInt_T oSum)
        //--------------------------------------------------------------

        // Must be a multiple of 16
        .equ    ADD_STACK_BYTECOUNT, 64

        // local variable registers
        LSUMLENGTH      .req x25
        LINDEX          .req x24
        ULSUM           .req x23
        ULCARRY         .req x22

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
        str     x24, [sp, 48]
        str     x25, [sp, 56]

        // store parameters in registers
        mov     OADDEND1, x0
        mov     OADDEND2, x1
        mov     OSUM, x2

        // unsigned long ulCarry;
        // unsigned long ulSum;
        // long lIndex;
        // long lSumLength;

        //Determine the larger length.
    // lSumLength = BigInt_larger(oAddend1->lLength, oAddend2->lLength);
        ldr     x0, [OADDEND1]   
        ldr     x1, [OADDEND2]
        bl      BigInt_larger
        mov     LSUMLENGTH, x0

        // if (oSum->lLength <= lSumLength) goto endIfLength;
        ldr     x0, [OSUM]
        cmp     x0, LSUMLENGTH
        ble     endIfLength

        // Clear oSum's array if necessary.
    // memset(oSum->aulDigits, 0, MAX_DIGITS * sizeof(unsigned long));
        add     x0, OSUM, AULDIGITS
        mov     w1, 0
        mov     x2, MAX_DIGITS
        lsl     x2, x2, 3
        bl      memset
    
endIfLength:
        // Perform the addition.
        // ulCarry = 0; 
        mov     ULCARRY, 0

        // lIndex = 0;
        mov     LINDEX, 0

sumLoop:
        // if (lIndex >= lSumLength) goto endSumLoop;
        cmp     LINDEX, LSUMLENGTH
        bge     endSumLoop

        // ulSum = ulCarry;
        mov     ULSUM, ULCARRY

        // ulCarry = 0; 
        mov     ULCARRY, 0

        // ulSum += oAddend1->aulDigits[lIndex];
        add     x0, OADDEND1, AULDIGITS
        ldr     x0, [x0, LINDEX, lsl 3]
        add     ULSUM, x0, ULSUM
        // Check for overflow.
        //if (ulSum >= oAddend1->aulDigits[lIndex]) goto endIfOverflow1;
        cmp     ULSUM, x0
        bhs     endIfOverflow1

        // ulCarry = 1; 
        mov     ULCARRY, 1

endIfOverflow1:
        // ulSum += oAddend2->aulDigits[lIndex];
        add     x0, OADDEND2, AULDIGITS
        ldr     x0, [x0, LINDEX, lsl 3]
        add     ULSUM, x0, ULSUM

        // Check for overflow.
        //if (ulSum >= oAddend2->aulDigits[lIndex]) goto endIfOverflow2;
        cmp     ULSUM, x0
        bhs     endIfOverflow2

        // ulCarry = 1; 
        mov     ULCARRY, 1

endIfOverflow2:
        // oSum->aulDigits[lIndex] = ulSum;
        add     x0, OSUM, AULDIGITS
        str     ULSUM, [x0, LINDEX, lsl 3]
        
        // lIndex++;
        add     LINDEX, LINDEX, 1

        // goto sumLoop;
        b       sumLoop

endSumLoop:
        // Check for a carry out of the last "column" of the addition.
        // if (ulCarry != 1) goto endIfCarry;
        cmp     ULCARRY, 1
        bne     endIfCarry

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
        ldr     x24, [sp, 48]
        ldr     x25, [sp, 56]
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
        ldr     x24, [sp, 48]
        ldr     x25, [sp, 56]
        add     sp, sp, ADD_STACK_BYTECOUNT
        ret
.size   BigInt_add, (. -BigInt_add)
