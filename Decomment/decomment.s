	.arch armv8-a
	.file	"decomment.c"
	.text
	.align	2
	.global	s_normalHandler
	.type	s_normalHandler, %function
s_normalHandler:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 39
	beq	.L2
	cmp	w0, 47
	beq	.L3
	cmp	w0, 34
	beq	.L4
	b	.L7
.L3:
	mov	w0, 1
	b	.L6
.L2:
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 4
	b	.L6
.L4:
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 5
	b	.L6
.L7:
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 0
.L6:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	s_normalHandler, .-s_normalHandler
	.align	2
	.global	s_startCommentHandler
	.type	s_startCommentHandler, %function
s_startCommentHandler:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 42
	beq	.L9
	mov	w0, 47
	bl	putchar
	ldrb	w0, [sp, 31]
	cmp	w0, 39
	beq	.L10
	cmp	w0, 47
	beq	.L11
	cmp	w0, 34
	beq	.L12
	b	.L15
.L11:
	mov	w0, 1
	b	.L14
.L10:
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 4
	b	.L14
.L12:
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 5
	b	.L14
.L15:
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 0
	b	.L14
.L9:
	mov	w0, 32
	bl	putchar
	mov	w0, 2
.L14:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	s_startCommentHandler, .-s_startCommentHandler
	.align	2
	.global	s_inCommentHandler
	.type	s_inCommentHandler, %function
s_inCommentHandler:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 42
	bne	.L17
	mov	w0, 3
	b	.L18
.L17:
	ldrb	w0, [sp, 31]
	cmp	w0, 10
	bne	.L19
	ldrb	w0, [sp, 31]
	bl	putchar
.L19:
	mov	w0, 2
.L18:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	s_inCommentHandler, .-s_inCommentHandler
	.align	2
	.global	s_endCommentHandler
	.type	s_endCommentHandler, %function
s_endCommentHandler:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 47
	beq	.L21
	ldrb	w0, [sp, 31]
	cmp	w0, 42
	bne	.L22
	mov	w0, 3
	b	.L23
.L22:
	ldrb	w0, [sp, 31]
	cmp	w0, 10
	bne	.L24
	ldrb	w0, [sp, 31]
	bl	putchar
.L24:
	mov	w0, 2
	b	.L23
.L21:
	mov	w0, 0
.L23:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	s_endCommentHandler, .-s_endCommentHandler
	.align	2
	.global	s_singleSTRHandler
	.type	s_singleSTRHandler, %function
s_singleSTRHandler:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	bl	putchar
	ldrb	w0, [sp, 31]
	cmp	w0, 39
	beq	.L26
	cmp	w0, 92
	bne	.L27
	mov	w0, 6
	b	.L28
.L26:
	mov	w0, 0
	b	.L28
.L27:
	mov	w0, 4
.L28:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	s_singleSTRHandler, .-s_singleSTRHandler
	.align	2
	.global	s_doubleSTRHandler
	.type	s_doubleSTRHandler, %function
s_doubleSTRHandler:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	bl	putchar
	ldrb	w0, [sp, 31]
	cmp	w0, 34
	beq	.L30
	cmp	w0, 92
	bne	.L31
	mov	w0, 7
	b	.L32
.L30:
	mov	w0, 0
	b	.L32
.L31:
	mov	w0, 5
.L32:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	s_doubleSTRHandler, .-s_doubleSTRHandler
	.align	2
	.global	s_ignoreSingleHandler
	.type	s_ignoreSingleHandler, %function
s_ignoreSingleHandler:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 4
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	s_ignoreSingleHandler, .-s_ignoreSingleHandler
	.align	2
	.global	s_ignoreDoubleHandler
	.type	s_ignoreDoubleHandler, %function
s_ignoreDoubleHandler:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	bl	putchar
	mov	w0, 5
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	s_ignoreDoubleHandler, .-s_ignoreDoubleHandler
	.section	.rodata
	.align	3
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L38
.L48:
	ldr	w0, [sp, 16]
	cmp	w0, 10
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w0, w1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	beq	.L39
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bhi	.L40
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L41
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bhi	.L42
	b	.L53
.L40:
	ldr	w0, [sp, 28]
	cmp	w0, 5
	beq	.L44
	ldr	w0, [sp, 28]
	cmp	w0, 5
	bcc	.L45
	ldr	w0, [sp, 28]
	cmp	w0, 6
	beq	.L46
	ldr	w0, [sp, 28]
	cmp	w0, 7
	beq	.L47
	b	.L38
.L53:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_normalHandler
	str	w0, [sp, 28]
	b	.L38
.L41:
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_startCommentHandler
	str	w0, [sp, 28]
	b	.L38
.L42:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_inCommentHandler
	str	w0, [sp, 28]
	b	.L38
.L39:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_endCommentHandler
	str	w0, [sp, 28]
	b	.L38
.L45:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_singleSTRHandler
	str	w0, [sp, 28]
	b	.L38
.L44:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_doubleSTRHandler
	str	w0, [sp, 28]
	b	.L38
.L46:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_ignoreSingleHandler
	str	w0, [sp, 28]
	b	.L38
.L47:
	ldr	w0, [sp, 16]
	and	w0, w0, 255
	bl	s_ignoreDoubleHandler
	str	w0, [sp, 28]
	nop
.L38:
	bl	getchar
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	cmn	w0, #1
	bne	.L48
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L49
	mov	w0, 47
	bl	putchar
.L49:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L50
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L51
.L50:
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	w2, [sp, 20]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L52
.L51:
	mov	w0, 0
.L52:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
