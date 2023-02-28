	.arch armv8-a
	.file	"stra.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"stra.c"
	.align	3
.LC1:
	.string	"pcSrc != NULL"
	.text
	.align	2
	.global	Str_getLength
	.type	Str_getLength, %function
Str_getLength:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L3
	adrp	x0, __PRETTY_FUNCTION__.3299
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3299
	mov	w2, 10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L4:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	Str_getLength, .-Str_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"pcDest != NULL && pcSrc != NULL"
	.text
	.align	2
	.global	Str_copy
	.type	Str_copy, %function
Str_copy:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L7
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L9
.L7:
	adrp	x0, __PRETTY_FUNCTION__.3308
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3308
	mov	w2, 19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L10:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	Str_copy, .-Str_copy
	.align	2
	.global	Str_concat
	.type	Str_concat, %function
Str_concat:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L15
.L13:
	adrp	x0, __PRETTY_FUNCTION__.3318
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3318
	mov	w2, 33
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L16:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L15:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L16
	b	.L17
.L18:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	str	w2, [sp, 44]
	sxtw	x0, w0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L17:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	Str_concat, .-Str_concat
	.section	.rodata
	.align	3
.LC3:
	.string	"pcS1 != NULL && pcS2 != NULL"
	.text
	.align	2
	.global	Str_compare
	.type	Str_compare, %function
Str_compare:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L21
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L23
.L21:
	adrp	x0, __PRETTY_FUNCTION__.3330
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3330
	mov	w2, 43
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L26:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	b	.L25
.L24:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L23:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L26
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w2, w0
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w2, w0
.L25:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	Str_compare, .-Str_compare
	.section	.rodata
	.align	3
.LC4:
	.string	"pcHaystack != NULL && pcNeedle != NULL"
	.text
	.align	2
	.global	Str_search
	.type	Str_search, %function
Str_search:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L28
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L29
.L28:
	adrp	x0, __PRETTY_FUNCTION__.3340
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3340
	mov	w2, 58
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L29:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L32
	ldr	x0, [sp, 24]
	b	.L31
.L37:
	str	wzr, [sp, 40]
	b	.L33
.L35:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L33:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L34
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L34
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L35
.L34:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L36
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	b	.L31
.L36:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L32:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L37
	mov	x0, 0
.L31:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3299, %object
	.size	__PRETTY_FUNCTION__.3299, 14
__PRETTY_FUNCTION__.3299:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.3308, %object
	.size	__PRETTY_FUNCTION__.3308, 9
__PRETTY_FUNCTION__.3308:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.3318, %object
	.size	__PRETTY_FUNCTION__.3318, 11
__PRETTY_FUNCTION__.3318:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.3330, %object
	.size	__PRETTY_FUNCTION__.3330, 12
__PRETTY_FUNCTION__.3330:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.3340, %object
	.size	__PRETTY_FUNCTION__.3340, 11
__PRETTY_FUNCTION__.3340:
	.string	"Str_search"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
