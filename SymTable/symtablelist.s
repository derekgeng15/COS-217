	.arch armv8-a
	.file	"symtablelist.c"
	.text
	.align	2
	.global	SymTable_new
	.type	SymTable_new, %function
SymTable_new:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
.L3:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	SymTable_new, .-SymTable_new
	.section	.rodata
	.align	3
.LC0:
	.string	"symtablelist.c"
	.align	3
.LC1:
	.string	"oSymTable != NULL"
	.text
	.align	2
	.global	SymTable_free
	.type	SymTable_free, %function
SymTable_free:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L5
	adrp	x0, __PRETTY_FUNCTION__.3261
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3261
	mov	w2, 41
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L5:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	b	.L6
.L7:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 40]
	bl	free
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
.L6:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L7
	ldr	x0, [sp, 24]
	bl	free
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	SymTable_free, .-SymTable_free
	.align	2
	.global	SymTable_getLength
	.type	SymTable_getLength, %function
SymTable_getLength:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L9
	adrp	x0, __PRETTY_FUNCTION__.3268
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3268
	mov	w2, 58
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L9:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	SymTable_getLength, .-SymTable_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"pcKey != NULL"
	.text
	.align	2
	.global	SymTable_put
	.type	SymTable_put, %function
SymTable_put:
.LFB3:
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
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.3275
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3275
	mov	w2, 64
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L12:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.3275
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3275
	mov	w2, 65
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L14
.L17:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	strcmp
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	b	.L16
.L15:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L14:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L17
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L18
	mov	w0, 0
	b	.L16
.L18:
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
	bne	.L19
	mov	w0, 0
	b	.L16
.L19:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	ldr	x1, [sp, 32]
	bl	strcpy
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0]
	mov	w0, 1
.L16:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	SymTable_put, .-SymTable_put
	.align	2
	.global	SymTable_replace
	.type	SymTable_replace, %function
SymTable_replace:
.LFB4:
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
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.3286
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3286
	mov	w2, 92
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.3286
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3286
	mov	w2, 93
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L23
.L26:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	strcmp
	cmp	w0, 0
	bne	.L24
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 48]
	b	.L25
.L24:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L23:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L26
	mov	x0, 0
.L25:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	SymTable_replace, .-SymTable_replace
	.align	2
	.global	SymTable_contains
	.type	SymTable_contains, %function
SymTable_contains:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L28
	adrp	x0, __PRETTY_FUNCTION__.3295
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3295
	mov	w2, 110
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L28:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L29
	adrp	x0, __PRETTY_FUNCTION__.3295
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3295
	mov	w2, 111
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L29:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	b	.L30
.L33:
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L31
	mov	w0, 1
	b	.L32
.L31:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	str	x0, [sp, 40]
.L30:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L33
	mov	w0, 0
.L32:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	SymTable_contains, .-SymTable_contains
	.align	2
	.global	SymTable_get
	.type	SymTable_get, %function
SymTable_get:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L35
	adrp	x0, __PRETTY_FUNCTION__.3304
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3304
	mov	w2, 125
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L35:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L36
	adrp	x0, __PRETTY_FUNCTION__.3304
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3304
	mov	w2, 126
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L36:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	b	.L37
.L40:
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L38
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	b	.L39
.L38:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	str	x0, [sp, 40]
.L37:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L40
	mov	x0, 0
.L39:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	SymTable_get, .-SymTable_get
	.align	2
	.global	SymTable_remove
	.type	SymTable_remove, %function
SymTable_remove:
.LFB7:
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
	bne	.L42
	adrp	x0, __PRETTY_FUNCTION__.3315
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3315
	mov	w2, 142
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L42:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L43
	adrp	x0, __PRETTY_FUNCTION__.3315
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3315
	mov	w2, 143
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L43:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L44
	mov	x0, 0
	b	.L45
.L44:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L46
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
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
	ldr	x0, [sp, 40]
	b	.L45
.L46:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	b	.L47
.L49:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L48
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
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
	ldr	x0, [sp, 40]
	b	.L45
.L48:
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 16]
	str	x0, [sp, 56]
.L47:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L49
	mov	x0, 0
.L45:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
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
.LFB8:
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
	bne	.L51
	adrp	x0, __PRETTY_FUNCTION__.3328
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3328
	mov	w2, 184
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L51:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L52
	adrp	x0, __PRETTY_FUNCTION__.3328
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3328
	mov	w2, 185
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L52:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L53
.L54:
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
.L53:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L54
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	SymTable_map, .-SymTable_map
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3261, %object
	.size	__PRETTY_FUNCTION__.3261, 14
__PRETTY_FUNCTION__.3261:
	.string	"SymTable_free"
	.align	3
	.type	__PRETTY_FUNCTION__.3268, %object
	.size	__PRETTY_FUNCTION__.3268, 19
__PRETTY_FUNCTION__.3268:
	.string	"SymTable_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.3275, %object
	.size	__PRETTY_FUNCTION__.3275, 13
__PRETTY_FUNCTION__.3275:
	.string	"SymTable_put"
	.align	3
	.type	__PRETTY_FUNCTION__.3286, %object
	.size	__PRETTY_FUNCTION__.3286, 17
__PRETTY_FUNCTION__.3286:
	.string	"SymTable_replace"
	.align	3
	.type	__PRETTY_FUNCTION__.3295, %object
	.size	__PRETTY_FUNCTION__.3295, 18
__PRETTY_FUNCTION__.3295:
	.string	"SymTable_contains"
	.align	3
	.type	__PRETTY_FUNCTION__.3304, %object
	.size	__PRETTY_FUNCTION__.3304, 13
__PRETTY_FUNCTION__.3304:
	.string	"SymTable_get"
	.align	3
	.type	__PRETTY_FUNCTION__.3315, %object
	.size	__PRETTY_FUNCTION__.3315, 16
__PRETTY_FUNCTION__.3315:
	.string	"SymTable_remove"
	.align	3
	.type	__PRETTY_FUNCTION__.3328, %object
	.size	__PRETTY_FUNCTION__.3328, 13
__PRETTY_FUNCTION__.3328:
	.string	"SymTable_map"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
