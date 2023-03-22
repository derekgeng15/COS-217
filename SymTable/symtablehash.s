	.arch armv8-a
	.file	"symtablehash.c"
	.text
	.section	.rodata
	.align	3
	.type	numBuckets, %object
	.size	numBuckets, 64
numBuckets:
	.xword	509
	.xword	1021
	.xword	2039
	.xword	4093
	.xword	8191
	.xword	16381
	.xword	32749
	.xword	65521
	.align	3
	.type	MAX_BUCKET_COUNT, %object
	.size	MAX_BUCKET_COUNT, 8
MAX_BUCKET_COUNT:
	.xword	8
	.align	3
.LC0:
	.string	"symtablehash.c"
	.align	3
.LC1:
	.string	"pcKey != NULL"
	.text
	.align	2
	.type	SymTable_hash, %function
SymTable_hash:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x0, 63
	movk	x0, 0x1, lsl 16
	str	x0, [sp, 40]
	str	xzr, [sp, 48]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	adrp	x0, __PRETTY_FUNCTION__.3262
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3262
	mov	w2, 44
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L2:
	str	xzr, [sp, 56]
	b	.L3
.L4:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	mul	x1, x1, x0
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 16]
	udiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	SymTable_hash, .-SymTable_hash
	.section	.rodata
	.align	3
.LC2:
	.string	"oSymTable != NULL"
	.text
	.align	2
	.type	SymTable_resize, %function
SymTable_resize:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.3274
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3274
	mov	w2, 59
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L7:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 1
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L16
	str	xzr, [sp, 64]
	b	.L10
.L11:
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L10:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 1
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	ldr	x1, [sp, 64]
	cmp	x1, x0
	bcc	.L11
	str	xzr, [sp, 64]
	b	.L12
.L15:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 72]
	b	.L13
.L14:
	ldr	x0, [sp, 72]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 1
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	mov	x0, x2
	bl	SymTable_hash
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 72]
	str	x1, [x0, 16]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
.L13:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L14
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L12:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	ldr	x1, [sp, 64]
	cmp	x1, x0
	bcc	.L15
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 56]
	str	x1, [x0, 16]
	b	.L6
.L16:
	nop
.L6:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	SymTable_resize, .-SymTable_resize
	.align	2
	.global	SymTable_new
	.type	SymTable_new, %function
SymTable_new:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L18
	mov	x0, 0
	b	.L19
.L18:
	ldr	x0, [sp, 16]
	str	xzr, [x0]
	ldr	x0, [sp, 16]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0, 16]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L20
	mov	x0, 0
	b	.L19
.L20:
	str	xzr, [sp, 24]
	b	.L21
.L22:
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L21:
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bcc	.L22
	ldr	x0, [sp, 16]
.L19:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	SymTable_new, .-SymTable_new
	.align	2
	.global	SymTable_free
	.type	SymTable_free, %function
SymTable_free:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.3298
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3298
	mov	w2, 102
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L24:
	str	xzr, [sp, 48]
	b	.L25
.L28:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	b	.L26
.L27:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
.L26:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L27
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L25:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bcc	.L28
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	bl	free
	ldr	x0, [sp, 24]
	bl	free
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	SymTable_free, .-SymTable_free
	.align	2
	.global	SymTable_getLength
	.type	SymTable_getLength, %function
SymTable_getLength:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L30
	adrp	x0, __PRETTY_FUNCTION__.3308
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3308
	mov	w2, 122
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L30:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	SymTable_getLength, .-SymTable_getLength
	.align	2
	.global	SymTable_put
	.type	SymTable_put, %function
SymTable_put:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L33
	adrp	x0, __PRETTY_FUNCTION__.3316
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3316
	mov	w2, 129
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L33:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L34
	adrp	x0, __PRETTY_FUNCTION__.3316
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3316
	mov	w2, 130
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L34:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	SymTable_hash
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	b	.L35
.L38:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	strcmp
	cmp	w0, 0
	bne	.L36
	mov	w0, 0
	b	.L37
.L36:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L35:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L38
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L39
	mov	w0, 0
	b	.L37
.L39:
	ldr	x0, [sp, 32]
	bl	strlen
	add	x0, x0, 1
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L40
	mov	w0, 0
	b	.L37
.L40:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	ldr	x1, [sp, 32]
	bl	strcpy
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	bls	.L41
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 1
	mov	x0, 8
	cmp	x1, x0
	bcs	.L41
	ldr	x0, [sp, 40]
	bl	SymTable_resize
.L41:
	mov	w0, 1
.L37:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	SymTable_put, .-SymTable_put
	.align	2
	.global	SymTable_replace
	.type	SymTable_replace, %function
SymTable_replace:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L43
	adrp	x0, __PRETTY_FUNCTION__.3327
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3327
	mov	w2, 161
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L43:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L44
	adrp	x0, __PRETTY_FUNCTION__.3327
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3327
	mov	w2, 162
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L44:
	ldr	x0, [sp, 56]
	ldr	x19, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	SymTable_hash
	lsl	x0, x0, 3
	add	x0, x19, x0
	ldr	x0, [x0]
	str	x0, [sp, 72]
	b	.L45
.L48:
	ldr	x0, [sp, 72]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	strcmp
	cmp	w0, 0
	bne	.L46
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	b	.L47
.L46:
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 16]
	str	x0, [sp, 72]
.L45:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L48
	mov	x0, 0
.L47:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	SymTable_replace, .-SymTable_replace
	.align	2
	.global	SymTable_contains
	.type	SymTable_contains, %function
SymTable_contains:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L50
	adrp	x0, __PRETTY_FUNCTION__.3336
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3336
	mov	w2, 179
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L50:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L51
	adrp	x0, __PRETTY_FUNCTION__.3336
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3336
	mov	w2, 180
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L51:
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	SymTable_hash
	lsl	x0, x0, 3
	add	x0, x19, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	b	.L52
.L55:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	strcmp
	cmp	w0, 0
	bne	.L53
	mov	w0, 1
	b	.L54
.L53:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L52:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L55
	mov	w0, 0
.L54:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	SymTable_contains, .-SymTable_contains
	.align	2
	.global	SymTable_get
	.type	SymTable_get, %function
SymTable_get:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L57
	adrp	x0, __PRETTY_FUNCTION__.3345
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3345
	mov	w2, 194
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L57:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L58
	adrp	x0, __PRETTY_FUNCTION__.3345
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3345
	mov	w2, 195
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L58:
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	SymTable_hash
	lsl	x0, x0, 3
	add	x0, x19, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	b	.L59
.L62:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	strcmp
	cmp	w0, 0
	bne	.L60
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	b	.L61
.L60:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L59:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L62
	mov	x0, 0
.L61:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	SymTable_get, .-SymTable_get
	.align	2
	.global	SymTable_remove
	.type	SymTable_remove, %function
SymTable_remove:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L64
	adrp	x0, __PRETTY_FUNCTION__.3357
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3357
	mov	w2, 212
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L64:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L65
	adrp	x0, __PRETTY_FUNCTION__.3357
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3357
	mov	w2, 213
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L65:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L66
	mov	x0, 0
	b	.L67
.L66:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	SymTable_hash
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L68
	mov	x0, 0
	b	.L67
.L68:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L69
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x1, [x1, 16]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 32]
	b	.L67
.L69:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 48]
	b	.L70
.L72:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L71
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	str	x1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 32]
	b	.L67
.L71:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L70:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L72
	mov	x0, 0
.L67:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	SymTable_remove, .-SymTable_remove
	.section	.rodata
	.align	3
.LC3:
	.string	"pfApply != NULL"
	.text
	.align	2
	.global	SymTable_map
	.type	SymTable_map, %function
SymTable_map:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L74
	adrp	x0, __PRETTY_FUNCTION__.3371
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3371
	mov	w2, 257
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L74:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L75
	adrp	x0, __PRETTY_FUNCTION__.3371
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3371
	mov	w2, 258
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L75:
	str	xzr, [sp, 48]
	b	.L76
.L79:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	b	.L77
.L78:
	ldr	x0, [sp, 56]
	ldr	x4, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 24]
	mov	x1, x0
	mov	x0, x4
	blr	x3
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L77:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L78
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L76:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	adrp	x0, numBuckets
	add	x0, x0, :lo12:numBuckets
	ldr	x0, [x0, x1, lsl 3]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bcc	.L79
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	SymTable_map, .-SymTable_map
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3262, %object
	.size	__PRETTY_FUNCTION__.3262, 14
__PRETTY_FUNCTION__.3262:
	.string	"SymTable_hash"
	.align	3
	.type	__PRETTY_FUNCTION__.3274, %object
	.size	__PRETTY_FUNCTION__.3274, 16
__PRETTY_FUNCTION__.3274:
	.string	"SymTable_resize"
	.align	3
	.type	__PRETTY_FUNCTION__.3298, %object
	.size	__PRETTY_FUNCTION__.3298, 14
__PRETTY_FUNCTION__.3298:
	.string	"SymTable_free"
	.align	3
	.type	__PRETTY_FUNCTION__.3308, %object
	.size	__PRETTY_FUNCTION__.3308, 19
__PRETTY_FUNCTION__.3308:
	.string	"SymTable_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.3316, %object
	.size	__PRETTY_FUNCTION__.3316, 13
__PRETTY_FUNCTION__.3316:
	.string	"SymTable_put"
	.align	3
	.type	__PRETTY_FUNCTION__.3327, %object
	.size	__PRETTY_FUNCTION__.3327, 17
__PRETTY_FUNCTION__.3327:
	.string	"SymTable_replace"
	.align	3
	.type	__PRETTY_FUNCTION__.3336, %object
	.size	__PRETTY_FUNCTION__.3336, 18
__PRETTY_FUNCTION__.3336:
	.string	"SymTable_contains"
	.align	3
	.type	__PRETTY_FUNCTION__.3345, %object
	.size	__PRETTY_FUNCTION__.3345, 13
__PRETTY_FUNCTION__.3345:
	.string	"SymTable_get"
	.align	3
	.type	__PRETTY_FUNCTION__.3357, %object
	.size	__PRETTY_FUNCTION__.3357, 16
__PRETTY_FUNCTION__.3357:
	.string	"SymTable_remove"
	.align	3
	.type	__PRETTY_FUNCTION__.3371, %object
	.size	__PRETTY_FUNCTION__.3371, 13
__PRETTY_FUNCTION__.3371:
	.string	"SymTable_map"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
