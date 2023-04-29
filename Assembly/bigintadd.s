//----------------------------------------------------------------------
// bigintadd.s
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

        // local variable stack offsets
        .equ    LLARGER,    8

        // parameter stack offsets
        .equ    LLENGTH2,   16
        .equ    LLENGTH1,   24

BigInt_larger: 

        // Prolog
        sub     sp, sp, LARGER_STACK_BYTECOUNT
        str     x30, [sp]
        str     x0, [sp, LLENGTH1]
        str     x1, [sp, LLENGTH2]

        // long lLarger

        // if (lLength1 <= lLength2) goto elseIfLess;
        ldr     x0, [sp, LLENGTH1]
        ldr     x1, [sp, LLENGTH2]
        cmp     x0, x1
        bls     elseIfLess

        // lLarger = lLength1;
        ldr     x0, [sp, LLENGTH1]
        str     x0, [sp, LLARGER]
        
        // goto endIfGreater;
        b       endIfGreater

elseIfLess:

        // lLarger = lLength2;
        ldr     x0, [sp, LLENGTH2]
        str     x0, [sp, LLARGER]

        // goto endIfGreater;
        b       endIfGreater

endIfGreater:

        // Epilog and return lLarger
        ldr     x0, [sp, LLARGER]
        ldr     x30, [sp]
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
        
        // Local variables stack offsets:
        .equ    LSUMLENGTH,  8
        .equ    LINDEX,     16
        .equ    ULSUM,      24
        .equ    ULCARRY,    32

        // parameter stack offsets
        .equ    OSUM,       40
        .equ    OADDEND2,   48
        .equ    OADDEND1,   56

        // structure field offsets
        .equ    LLENGTH,    0
        .equ    AULDIGITS,  8
        
        .global BigInt_add

BigInt_add:

        // Prolog
        sub     sp, sp, ADD_STACK_BYTECOUNT
        str     x30, [sp]
        str     x0, [sp, OADDEND1]
        str     x1, [sp, OADDEND2]
        str     x2, [sp, OSUM]

        // unsigned long ulCarry;
        // unsigned long ulSum;
        // long lIndex;
        // long lSumLength;

        // Determine the larger length.
    // lSumLength = BigInt_larger(oAddend1->lLength, oAddend2->lLength);
        ldr     x0, [sp, OADDEND1]
        ldr     x0, [x0]
        ldr     x1, [sp, OADDEND2]
        ldr     x1, [x1]
        bl      BigInt_larger
        str     x0, [sp, LSUMLENGTH]
        // Clear oSum's array if necessary.

        // if (oSum->lLength <= lSumLength) goto endIfLength;
        ldr     x0, [sp, OSUM]
        ldr     x0, [x0]
        ldr     x1, [sp, LSUMLENGTH]
        cmp     x0, x1
        ble     endIfLength

    // memset(oSum->aulDigits, 0, MAX_DIGITS * sizeof(unsigned long));
        ldr     x0, [sp, OSUM]
        add     x0, x0, AULDIGITS
        mov     w1, 0
        mov     x2, MAX_DIGITS
        lsl     x2, x2, 3
        bl      memset

        // Perform the addition.
endIfLength:
        // ulCarry = 0; 
        mov     x0, 0
        str     x0, [sp, ULCARRY]

        // lIndex = 0;
        mov     x0, 0
        str     x0, [sp, LINDEX]

sumLoop:
        // if (lIndex >= lSumLength) goto endSumLoop;
        ldr     x0, [sp, LINDEX]
        ldr     x1, [sp, LSUMLENGTH]
        cmp     x0, x1
        bge     endSumLoop

        // ulSum = ulCarry;
        ldr     x0, [sp, ULCARRY]
        str     x0, [sp, ULSUM]

        // ulCarry = 0; 
        mov     x0, 0
        str     x0, [sp, ULCARRY]

        // ulSum += oAddend1->aulDigits[lIndex];
        ldr     x0, [sp, OADDEND1]
        add     x0, x0, AULDIGITS
        ldr     x1, [sp, LINDEX]
        ldr     x0, [x0, x1, lsl 3]
        ldr     x1, [sp, ULSUM]
        add     x0, x0, x1
        str     x0, [sp, ULSUM]

        // Check for overflow.
        //if (ulSum >= oAddend1->aulDigits[lIndex]) goto endIfOverflow1;
        ldr     x0, [sp, ULSUM]
        ldr     x1, [sp, OADDEND1]
        add     x1, x1, AULDIGITS
        ldr     x2, [sp, LINDEX]
        ldr     x1, [x1, x2, lsl 3]
        cmp     x0, x1
        bhs     endIfOverflow1

        // ulCarry = 1; 
        mov     x0, 1
        str     x0, [sp, ULCARRY]

endIfOverflow1:
        // ulSum += oAddend2->aulDigits[lIndex];
        ldr     x0, [sp, OADDEND2]
        add     x0, x0, AULDIGITS
        ldr     x1, [sp, LINDEX]
        ldr     x0, [x0, x1, lsl 3]
        ldr     x1, [sp, ULSUM]
        add     x0, x0, x1
        str     x0, [sp, ULSUM]

        // Check for overflow.
        //if (ulSum >= oAddend2->aulDigits[lIndex]) goto endIfOverflow2;
        ldr     x0, [sp, ULSUM]
        ldr     x1, [sp, OADDEND2]
        add     x1, x1, AULDIGITS
        ldr     x2, [sp, LINDEX]
        ldr     x1, [x1, x2, lsl 3]
        cmp     x0, x1
        bhs     endIfOverflow2

        // ulCarry = 1; 
        mov     x0, 1
        str     x0, [sp, ULCARRY]

endIfOverflow2:
        // oSum->aulDigits[lIndex] = ulSum;
        ldr     x0, [sp, OSUM]
        add     x0, x0, AULDIGITS
        ldr     x1, [sp, LINDEX]
        lsl     x1, x1, 3
        add     x0, x0, x1
        ldr     x1, [sp, ULSUM]
        str     x1, [x0]
        
        // lIndex++;
        ldr     x0, [sp, LINDEX]
        add     x0, x0, 1
        str     x0, [sp, LINDEX]

        // goto sumLoop;
        b       sumLoop

endSumLoop:
        // Check for a carry out of the last "column" of the addition. 
        // if (ulCarry != 1) goto endIfCarry;
        ldr     x0, [sp, ULCARRY]
        cmp     x0, 1
        bne     endIfCarry

        // if (lSumLength != MAX_DIGITS) goto endIfMax;
        ldr     x0, [sp, LSUMLENGTH]
        cmp     x0, MAX_DIGITS
        bne     endIfMax

        // return false
        mov     w0, FALSE
        ldr     x30, [sp]
        add     sp, sp, ADD_STACK_BYTECOUNT
        ret
        .size   BigInt_add, (. -BigInt_add)

endIfMax:
        // oSum->aulDigits[lSumLength] = 1;
        ldr     x0, [sp, OSUM]
        add     x0, x0, AULDIGITS
        ldr     x1, [sp, LSUMLENGTH]
        lsl     x1, x1, 3
        add     x0, x0, x1
        mov     x1, 1
        str     x1, [x0]

        // lSumLength++;
        ldr     x0, [sp, LSUMLENGTH]
        add     x0, x0, 1
        str     x0, [sp, LSUMLENGTH]

endIfCarry:
        // Set the length of the sum.
        // oSum->lLength = lSumLength;  
        ldr     x0, [sp, OSUM]
        ldr     x1, [sp, LSUMLENGTH]
        str     x1, [x0]

        // Epilog return true
        mov     w0, TRUE
        ldr     x30, [sp]
        add     sp, sp, ADD_STACK_BYTECOUNT
        ret
        .size   BigInt_add, (. -BigInt_add)
