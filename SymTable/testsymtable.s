	.arch armv8-a
	.file	"testsymtable.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Test at line %d failed.\n"
	.text
	.align	2
	.type	assure, %function
assure:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
.L3:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	assure, .-assure
	.align	2
	.type	setCpuTimeLimit, %function
setCpuTimeLimit:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	x0, 300
	str	x0, [sp, 16]
	mov	x0, 300
	str	x0, [sp, 24]
	add	x0, sp, 16
	mov	x1, x0
	mov	w0, 0
	bl	setrlimit
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	setCpuTimeLimit, .-setCpuTimeLimit
	.section	.rodata
	.align	3
.LC1:
	.string	"testsymtable.c"
	.align	3
.LC2:
	.string	"pcKey != NULL"
	.align	3
.LC3:
	.string	"pvValue != NULL"
	.align	3
.LC4:
	.string	"pvExtra != NULL"
	.text
	.align	2
	.type	printBinding, %function
printBinding:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L6
	adrp	x0, __PRETTY_FUNCTION__.3653
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3653
	mov	w2, 60
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L6:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.3653
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3653
	mov	w2, 61
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L7:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L8
	adrp	x0, __PRETTY_FUNCTION__.3653
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3653
	mov	w2, 62
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L8:
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	printf
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	printBinding, .-printBinding
	.section	.rodata
	.align	3
.LC5:
	.string	"pvExtra == NULL"
	.align	3
.LC6:
	.string	"%s\t%s\n"
	.text
	.align	2
	.type	printBindingSimple, %function
printBindingSimple:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.3659
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3659
	mov	w2, 76
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L10:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.3659
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3659
	mov	w2, 77
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L11:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.3659
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3659
	mov	w2, 78
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L12:
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	printBindingSimple, .-printBindingSimple
	.section	.rodata
	.align	3
.LC16:
	.string	"------------------------------------------------------"
	.align	3
.LC17:
	.string	"Testing the most basic SymTable functions."
	.align	3
.LC18:
	.string	"No output should appear here:"
	.align	3
.LC19:
	.string	"Clemens"
	.align	3
.LC20:
	.string	"Maris"
	.text
	.align	2
	.type	testBasics, %function
testBasics:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 112
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 104
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 96
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 88
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 72
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 56
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 7]
	str	w1, [x0, 7]
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 16
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 152]
	ldr	x0, [sp, 152]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 115
	bl	assure
	add	x1, sp, 72
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 120
	ldr	w0, [sp, 148]
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 123
	bl	assure
	add	x1, sp, 56
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 126
	ldr	w0, [sp, 148]
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 2
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 129
	bl	assure
	add	x1, sp, 40
	add	x0, sp, 96
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 132
	ldr	w0, [sp, 148]
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 3
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 135
	bl	assure
	add	x1, sp, 24
	add	x0, sp, 88
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 138
	ldr	w0, [sp, 148]
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 4
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 141
	bl	assure
	add	x1, sp, 56
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	ldr	w0, [sp, 148]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 145
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 4
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 148
	bl	assure
	add	x1, sp, 56
	add	x0, sp, 88
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	ldr	w0, [sp, 148]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 152
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 4
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 155
	bl	assure
	add	x0, sp, 112
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 132]
	mov	w1, 161
	ldr	w0, [sp, 132]
	bl	assure
	add	x0, sp, 104
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 132]
	mov	w1, 164
	ldr	w0, [sp, 132]
	bl	assure
	add	x0, sp, 96
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 132]
	mov	w1, 167
	ldr	w0, [sp, 132]
	bl	assure
	add	x0, sp, 88
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 132]
	mov	w1, 170
	ldr	w0, [sp, 132]
	bl	assure
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 132]
	ldr	w0, [sp, 132]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 173
	bl	assure
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 132]
	ldr	w0, [sp, 132]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 176
	bl	assure
	add	x0, sp, 112
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	add	x0, sp, 72
	ldr	x1, [sp, 120]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 181
	bl	assure
	add	x0, sp, 104
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	add	x0, sp, 56
	ldr	x1, [sp, 120]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 184
	bl	assure
	add	x0, sp, 96
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	add	x0, sp, 40
	ldr	x1, [sp, 120]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 187
	bl	assure
	add	x0, sp, 88
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	add	x0, sp, 24
	ldr	x1, [sp, 120]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 190
	bl	assure
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 193
	bl	assure
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 196
	bl	assure
	add	x1, sp, 40
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_replace
	str	x0, [sp, 120]
	add	x0, sp, 56
	ldr	x1, [sp, 120]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 202
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 4
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 205
	bl	assure
	add	x0, sp, 104
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_get
	str	x0, [sp, 120]
	add	x0, sp, 40
	ldr	x1, [sp, 120]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 208
	bl	assure
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	ldr	x0, [sp, 152]
	bl	SymTable_replace
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 212
	bl	assure
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	ldr	x0, [sp, 152]
	bl	SymTable_replace
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 215
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 4
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 218
	bl	assure
	add	x0, sp, 16
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 223
	ldr	w0, [sp, 148]
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 5
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 226
	bl	assure
	add	x1, sp, 72
	add	x0, sp, 16
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	ldr	w0, [sp, 148]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 230
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 5
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 233
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	testBasics, .-testBasics
	.section	.rodata
	.align	3
.LC7:
	.string	"Jeter"
	.align	3
.LC8:
	.string	"Mantle"
	.align	3
.LC9:
	.string	"Gehrig"
	.align	3
.LC10:
	.string	"Ruth"
	.align	3
.LC11:
	.string	"Shortstop"
	.align	3
.LC12:
	.string	"Center Field"
	.align	3
.LC13:
	.string	"First Base"
	.align	3
.LC14:
	.string	"Right Field"
	.align	3
.LC15:
	.string	"Brown"
	.text
	.section	.rodata
	.align	3
.LC21:
	.string	"Testing key comparison."
	.text
	.align	2
	.type	testKeyComparison, %function
testKeyComparison:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 48
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 40
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 260
	bl	assure
	add	x1, sp, 24
	add	x0, sp, 48
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 68]
	mov	w1, 262
	ldr	w0, [sp, 68]
	bl	assure
	add	x1, sp, 24
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 264
	bl	assure
	add	x0, sp, 40
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 56]
	add	x0, sp, 24
	ldr	x1, [sp, 56]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 266
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	testKeyComparison, .-testKeyComparison
	.section	.rodata
	.align	3
.LC23:
	.string	"Testing key ownership."
	.text
	.align	2
	.type	testKeyOwnership, %function
testKeyOwnership:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 290
	bl	assure
	add	x2, sp, 40
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	add	x1, sp, 24
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 68]
	mov	w1, 293
	ldr	w0, [sp, 68]
	bl	assure
	add	x0, sp, 40
	mov	w1, 30840
	movk	w1, 0x78, lsl 16
	str	w1, [x0]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 56]
	add	x0, sp, 24
	ldr	x1, [sp, 56]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 296
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	testKeyOwnership, .-testKeyOwnership
	.section	.rodata
	.align	3
.LC22:
	.string	"CenterField"
	.text
	.section	.rodata
	.align	3
.LC24:
	.string	"Testing the SymTable_remove() function."
	.text
	.align	2
	.type	testRemove, %function
testRemove:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 112
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 104
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 96
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 88
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 72
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 56
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 7]
	str	w1, [x0, 7]
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 152]
	ldr	x0, [sp, 152]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 328
	bl	assure
	add	x1, sp, 72
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 331
	ldr	w0, [sp, 148]
	bl	assure
	add	x1, sp, 56
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 334
	ldr	w0, [sp, 148]
	bl	assure
	add	x1, sp, 40
	add	x0, sp, 96
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 337
	ldr	w0, [sp, 148]
	bl	assure
	add	x1, sp, 24
	add	x0, sp, 88
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_put
	str	w0, [sp, 148]
	mov	w1, 340
	ldr	w0, [sp, 148]
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 4
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 343
	bl	assure
	add	x0, sp, 112
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_remove
	str	x0, [sp, 128]
	add	x0, sp, 72
	ldr	x1, [sp, 128]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 346
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 3
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 349
	bl	assure
	add	x0, sp, 112
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 124]
	ldr	w0, [sp, 124]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 352
	bl	assure
	add	x0, sp, 88
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_remove
	str	x0, [sp, 128]
	add	x0, sp, 24
	ldr	x1, [sp, 128]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 355
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 2
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 358
	bl	assure
	add	x0, sp, 88
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 124]
	ldr	w0, [sp, 124]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 361
	bl	assure
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	ldr	x0, [sp, 152]
	bl	SymTable_remove
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 364
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 2
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 367
	bl	assure
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 124]
	ldr	w0, [sp, 124]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 370
	bl	assure
	add	x0, sp, 88
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_remove
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 373
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_getLength
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 2
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 376
	bl	assure
	add	x0, sp, 88
	mov	x1, x0
	ldr	x0, [sp, 152]
	bl	SymTable_contains
	str	w0, [sp, 124]
	ldr	w0, [sp, 124]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 379
	bl	assure
	ldr	x0, [sp, 152]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	testRemove, .-testRemove
	.section	.rodata
	.align	3
.LC25:
	.string	"Testing the SymTable_map() function."
	.align	3
.LC26:
	.string	"Four players and their positions should appear here:"
	.text
	.align	2
	.type	testMap, %function
testMap:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 104
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 96
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 88
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 80
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 64
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 48
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 7]
	str	w1, [x0, 7]
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 407
	bl	assure
	add	x1, sp, 64
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 120]
	bl	SymTable_put
	str	w0, [sp, 116]
	mov	w1, 410
	ldr	w0, [sp, 116]
	bl	assure
	add	x1, sp, 48
	add	x0, sp, 96
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 120]
	bl	SymTable_put
	str	w0, [sp, 116]
	mov	w1, 413
	ldr	w0, [sp, 116]
	bl	assure
	add	x1, sp, 32
	add	x0, sp, 88
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 120]
	bl	SymTable_put
	str	w0, [sp, 116]
	mov	w1, 416
	ldr	w0, [sp, 116]
	bl	assure
	add	x1, sp, 16
	add	x0, sp, 80
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 120]
	bl	SymTable_put
	str	w0, [sp, 116]
	mov	w1, 419
	ldr	w0, [sp, 116]
	bl	assure
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
	adrp	x0, printBinding
	add	x1, x0, :lo12:printBinding
	ldr	x0, [sp, 120]
	bl	SymTable_map
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	mov	x2, 0
	adrp	x0, printBindingSimple
	add	x1, x0, :lo12:printBindingSimple
	ldr	x0, [sp, 120]
	bl	SymTable_map
	ldr	x0, [sp, 120]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	testMap, .-testMap
	.section	.rodata
	.align	3
.LC27:
	.string	"Testing an empty SymTable object."
	.text
	.align	2
	.type	testEmptyTable, %function
testEmptyTable:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 449
	bl	assure
	ldr	x0, [sp, 40]
	bl	SymTable_getLength
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 452
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 40]
	bl	SymTable_contains
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 455
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 40]
	bl	SymTable_get
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 458
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 40]
	bl	SymTable_remove
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 461
	bl	assure
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
	adrp	x0, printBinding
	add	x1, x0, :lo12:printBinding
	ldr	x0, [sp, 40]
	bl	SymTable_map
	ldr	x0, [sp, 40]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	testEmptyTable, .-testEmptyTable
	.section	.rodata
	.align	3
.LC28:
	.string	"Testing a SymTable object that contains an empty key."
	.align	3
.LC29:
	.string	""
	.align	3
.LC30:
	.string	"An empty name and a position should appear here:"
	.text
	.align	2
	.type	testEmptyKey, %function
testEmptyKey:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 486
	bl	assure
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 68]
	mov	w1, 489
	ldr	w0, [sp, 68]
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 492
	bl	assure
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	ldr	x0, [sp, 72]
	bl	SymTable_contains
	str	w0, [sp, 52]
	mov	w1, 495
	ldr	w0, [sp, 52]
	bl	assure
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 40]
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 498
	bl	assure
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
	adrp	x0, printBinding
	add	x1, x0, :lo12:printBinding
	ldr	x0, [sp, 72]
	bl	SymTable_map
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	ldr	x0, [sp, 72]
	bl	SymTable_remove
	str	x0, [sp, 40]
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 505
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	testEmptyKey, .-testEmptyKey
	.section	.rodata
	.align	3
.LC31:
	.string	"Testing a SymTable object that contains NULL values."
	.text
	.align	2
	.type	testNullValue, %function
testNullValue:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 529
	bl	assure
	mov	x2, 0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 68]
	mov	w1, 532
	ldr	w0, [sp, 68]
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 535
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 72]
	bl	SymTable_contains
	str	w0, [sp, 52]
	mov	w1, 538
	ldr	w0, [sp, 52]
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 541
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 72]
	bl	SymTable_remove
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 544
	bl	assure
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 68]
	mov	w1, 547
	ldr	w0, [sp, 68]
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 550
	bl	assure
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_contains
	str	w0, [sp, 52]
	mov	w1, 553
	ldr	w0, [sp, 52]
	bl	assure
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 40]
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 556
	bl	assure
	mov	x2, 0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_replace
	str	x0, [sp, 40]
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 559
	bl	assure
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_contains
	str	w0, [sp, 52]
	mov	w1, 562
	ldr	w0, [sp, 52]
	bl	assure
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 565
	bl	assure
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_remove
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 568
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	testNullValue, .-testNullValue
	.section	.rodata
	.align	3
.LC32:
	.string	"Testing a SymTable object that contains long keys."
	.text
	.align	2
	.type	testLongKey, %function
testLongKey:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #2080
	.cfi_def_cfa_offset 2080
	stp	x29, x30, [sp]
	.cfi_offset 29, -2080
	.cfi_offset 30, -2072
	mov	x29, sp
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	str	wzr, [sp, 2076]
	b	.L22
.L23:
	ldrsw	x0, [sp, 2076]
	add	x1, sp, 1032
	mov	w2, 97
	strb	w2, [x1, x0]
	ldr	w0, [sp, 2076]
	add	w0, w0, 1
	str	w0, [sp, 2076]
.L22:
	ldr	w0, [sp, 2076]
	cmp	w0, 998
	ble	.L23
	strb	wzr, [sp, 2031]
	str	wzr, [sp, 2076]
	b	.L24
.L25:
	ldrsw	x0, [sp, 2076]
	add	x1, sp, 32
	mov	w2, 98
	strb	w2, [x1, x0]
	ldr	w0, [sp, 2076]
	add	w0, w0, 1
	str	w0, [sp, 2076]
.L24:
	ldr	w0, [sp, 2076]
	cmp	w0, 998
	ble	.L25
	strb	wzr, [sp, 1031]
	bl	SymTable_new
	str	x0, [sp, 2064]
	ldr	x0, [sp, 2064]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 605
	bl	assure
	add	x1, sp, 16
	add	x0, sp, 1032
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_put
	str	w0, [sp, 2060]
	mov	w1, 608
	ldr	w0, [sp, 2060]
	bl	assure
	add	x1, sp, 16
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_put
	str	w0, [sp, 2060]
	mov	w1, 610
	ldr	w0, [sp, 2060]
	bl	assure
	add	x1, sp, 16
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_put
	str	w0, [sp, 2060]
	ldr	w0, [sp, 2060]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 612
	bl	assure
	ldr	x0, [sp, 2064]
	bl	SymTable_getLength
	str	x0, [sp, 2048]
	ldr	x0, [sp, 2048]
	cmp	x0, 2
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 615
	bl	assure
	add	x0, sp, 1032
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_contains
	str	w0, [sp, 2044]
	mov	w1, 618
	ldr	w0, [sp, 2044]
	bl	assure
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_contains
	str	w0, [sp, 2044]
	mov	w1, 620
	ldr	w0, [sp, 2044]
	bl	assure
	add	x0, sp, 1032
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_get
	str	x0, [sp, 2032]
	add	x0, sp, 16
	ldr	x1, [sp, 2032]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 623
	bl	assure
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_get
	str	x0, [sp, 2032]
	add	x0, sp, 16
	ldr	x1, [sp, 2032]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 625
	bl	assure
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_remove
	str	x0, [sp, 2032]
	add	x0, sp, 16
	ldr	x1, [sp, 2032]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 628
	bl	assure
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_remove
	str	x0, [sp, 2032]
	ldr	x0, [sp, 2032]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 630
	bl	assure
	add	x0, sp, 1032
	mov	x1, x0
	ldr	x0, [sp, 2064]
	bl	SymTable_remove
	str	x0, [sp, 2032]
	add	x0, sp, 16
	ldr	x1, [sp, 2032]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 632
	bl	assure
	ldr	x0, [sp, 2064]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 2080
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	testLongKey, .-testLongKey
	.section	.rodata
	.align	3
.LC33:
	.string	"Testing a SymTable object that contains other"
	.align	3
.LC34:
	.string	"SymTable objects."
	.align	3
.LC35:
	.string	"first table"
	.align	3
.LC36:
	.string	"second table"
	.text
	.align	2
	.type	testTableOfTables, %function
testTableOfTables:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	puts
	adrp	x0, .LC34
	add	x0, x0, :lo12:.LC34
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 660
	bl	assure
	add	x0, sp, 32
	mov	x2, x0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 663
	ldr	w0, [sp, 84]
	bl	assure
	bl	SymTable_new
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 666
	bl	assure
	add	x0, sp, 16
	mov	x2, x0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 669
	ldr	w0, [sp, 84]
	bl	assure
	bl	SymTable_new
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 672
	bl	assure
	ldr	x2, [sp, 88]
	adrp	x0, .LC35
	add	x1, x0, :lo12:.LC35
	ldr	x0, [sp, 64]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 675
	ldr	w0, [sp, 84]
	bl	assure
	ldr	x2, [sp, 72]
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	ldr	x0, [sp, 64]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 678
	ldr	w0, [sp, 84]
	bl	assure
	adrp	x0, .LC35
	add	x1, x0, :lo12:.LC35
	ldr	x0, [sp, 64]
	bl	SymTable_get
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 88]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 681
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 56]
	bl	SymTable_get
	str	x0, [sp, 48]
	add	x0, sp, 32
	ldr	x1, [sp, 48]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 684
	bl	assure
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	ldr	x0, [sp, 64]
	bl	SymTable_get
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 687
	bl	assure
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	ldr	x0, [sp, 56]
	bl	SymTable_get
	str	x0, [sp, 48]
	add	x0, sp, 16
	ldr	x1, [sp, 48]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 690
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_free
	ldr	x0, [sp, 88]
	bl	SymTable_free
	ldr	x0, [sp, 64]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	testTableOfTables, .-testTableOfTables
	.section	.rodata
	.align	3
.LC39:
	.string	"Testing the collision handling of a SymTable object"
	.align	3
.LC40:
	.string	"assuming a hash table implementation, and assuming that"
	.align	3
.LC41:
	.string	"the implementation uses the hash function from the"
	.align	3
.LC42:
	.string	"assignment specification."
	.align	3
.LC43:
	.string	"250"
	.align	3
.LC44:
	.string	"469"
	.align	3
.LC45:
	.string	"947"
	.align	3
.LC46:
	.string	"1303"
	.align	3
.LC47:
	.string	"2016"
	.text
	.align	2
	.type	testCollisions, %function
testCollisions:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	mov	x0, 26992
	movk	x0, 0x6374, lsl 16
	movk	x0, 0x6568, lsl 32
	movk	x0, 0x72, lsl 48
	str	x0, [sp, 64]
	mov	x0, 24931
	movk	x0, 0x6374, lsl 16
	movk	x0, 0x6568, lsl 32
	movk	x0, 0x72, lsl 48
	str	x0, [sp, 56]
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 7]
	str	w1, [x0, 7]
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC39
	add	x0, x0, :lo12:.LC39
	bl	puts
	adrp	x0, .LC40
	add	x0, x0, :lo12:.LC40
	bl	puts
	adrp	x0, .LC41
	add	x0, x0, :lo12:.LC41
	bl	puts
	adrp	x0, .LC42
	add	x0, x0, :lo12:.LC42
	bl	puts
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	SymTable_new
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 724
	bl	assure
	add	x0, sp, 64
	mov	x2, x0
	adrp	x0, .LC43
	add	x1, x0, :lo12:.LC43
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 730
	ldr	w0, [sp, 84]
	bl	assure
	add	x0, sp, 56
	mov	x2, x0
	adrp	x0, .LC44
	add	x1, x0, :lo12:.LC44
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 733
	ldr	w0, [sp, 84]
	bl	assure
	add	x0, sp, 40
	mov	x2, x0
	adrp	x0, .LC45
	add	x1, x0, :lo12:.LC45
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 736
	ldr	w0, [sp, 84]
	bl	assure
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC46
	add	x1, x0, :lo12:.LC46
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 739
	ldr	w0, [sp, 84]
	bl	assure
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, .LC47
	add	x1, x0, :lo12:.LC47
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 742
	ldr	w0, [sp, 84]
	bl	assure
	adrp	x0, .LC43
	add	x1, x0, :lo12:.LC43
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 64
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 745
	bl	assure
	adrp	x0, .LC44
	add	x1, x0, :lo12:.LC44
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 56
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 748
	bl	assure
	adrp	x0, .LC45
	add	x1, x0, :lo12:.LC45
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 40
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 751
	bl	assure
	adrp	x0, .LC46
	add	x1, x0, :lo12:.LC46
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 24
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 754
	bl	assure
	adrp	x0, .LC47
	add	x1, x0, :lo12:.LC47
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 24
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 757
	bl	assure
	adrp	x0, .LC45
	add	x1, x0, :lo12:.LC45
	ldr	x0, [sp, 88]
	bl	SymTable_remove
	str	x0, [sp, 72]
	add	x0, sp, 40
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 760
	bl	assure
	adrp	x0, .LC47
	add	x1, x0, :lo12:.LC47
	ldr	x0, [sp, 88]
	bl	SymTable_remove
	str	x0, [sp, 72]
	add	x0, sp, 24
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 763
	bl	assure
	adrp	x0, .LC43
	add	x1, x0, :lo12:.LC43
	ldr	x0, [sp, 88]
	bl	SymTable_remove
	str	x0, [sp, 72]
	add	x0, sp, 64
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 766
	bl	assure
	adrp	x0, .LC44
	add	x1, x0, :lo12:.LC44
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 56
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 769
	bl	assure
	adrp	x0, .LC46
	add	x1, x0, :lo12:.LC46
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 72]
	add	x0, sp, 24
	ldr	x1, [sp, 72]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 772
	bl	assure
	ldr	x0, [sp, 88]
	bl	SymTable_free
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	testCollisions, .-testCollisions
	.section	.rodata
	.align	3
.LC37:
	.string	"first base"
	.align	3
.LC38:
	.string	"second base"
	.text
	.section	.rodata
	.align	3
.LC48:
	.string	"Testing a potentially large SymTable object."
	.align	3
.LC49:
	.string	"No output except CPU time consumed should appear here:"
	.align	3
.LC50:
	.string	"xxx"
	.align	3
.LC51:
	.string	"yyy"
	.align	3
.LC52:
	.string	"%d"
	.align	3
.LC53:
	.string	"CPU time (%d bindings):  %f seconds\n"
	.text
	.align	2
	.type	testLargeTable, %function
testLargeTable:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	w0, [sp, 28]
	str	xzr, [sp, 104]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	adrp	x0, .LC48
	add	x0, x0, :lo12:.LC48
	bl	puts
	adrp	x0, .LC49
	add	x0, x0, :lo12:.LC49
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	bl	clock
	str	x0, [sp, 96]
	bl	SymTable_new
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 809
	bl	assure
	adrp	x0, .LC50
	add	x2, x0, :lo12:.LC50
	adrp	x0, .LC50
	add	x1, x0, :lo12:.LC50
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 811
	ldr	w0, [sp, 84]
	bl	assure
	adrp	x0, .LC51
	add	x2, x0, :lo12:.LC51
	adrp	x0, .LC51
	add	x1, x0, :lo12:.LC51
	ldr	x0, [sp, 88]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 813
	ldr	w0, [sp, 84]
	bl	assure
	bl	SymTable_new
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 817
	bl	assure
	str	wzr, [sp, 124]
	b	.L29
.L30:
	add	x3, sp, 32
	ldr	w2, [sp, 124]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	bl	strlen
	add	x0, x0, 1
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 825
	bl	assure
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcpy
	add	x0, sp, 32
	ldr	x2, [sp, 64]
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_put
	str	w0, [sp, 84]
	mov	w1, 828
	ldr	w0, [sp, 84]
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 104]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 830
	bl	assure
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L29:
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L30
	str	wzr, [sp, 120]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 116]
	b	.L31
.L36:
	add	x3, sp, 32
	ldr	w2, [sp, 120]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 842
	bl	assure
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L32
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L32
	mov	w0, 1
	b	.L33
.L32:
	mov	w0, 0
.L33:
	mov	w1, 843
	bl	assure
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	add	x3, sp, 32
	ldr	w2, [sp, 116]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 848
	bl	assure
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L34
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L34
	mov	w0, 1
	b	.L35
.L34:
	mov	w0, 0
.L35:
	mov	w1, 849
	bl	assure
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	str	w0, [sp, 116]
.L31:
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L36
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L37
	add	x3, sp, 32
	ldr	w2, [sp, 120]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_get
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 857
	bl	assure
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L38
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L38
	mov	w0, 1
	b	.L39
.L38:
	mov	w0, 0
.L39:
	mov	w1, 858
	bl	assure
.L37:
	str	wzr, [sp, 120]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 116]
	b	.L40
.L45:
	add	x3, sp, 32
	ldr	w2, [sp, 120]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_remove
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 869
	bl	assure
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L41
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L41
	mov	w0, 1
	b	.L42
.L41:
	mov	w0, 0
.L42:
	mov	w1, 870
	bl	assure
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 104]
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 104]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 874
	bl	assure
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	add	x3, sp, 32
	ldr	w2, [sp, 116]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_remove
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 879
	bl	assure
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L43
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L43
	mov	w0, 1
	b	.L44
.L43:
	mov	w0, 0
.L44:
	mov	w1, 880
	bl	assure
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 104]
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 104]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 884
	bl	assure
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	str	w0, [sp, 116]
.L40:
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L45
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L46
	add	x3, sp, 32
	ldr	w2, [sp, 120]
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sprintf
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	SymTable_remove
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, 892
	bl	assure
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L47
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L47
	mov	w0, 1
	b	.L48
.L47:
	mov	w0, 0
.L48:
	mov	w1, 893
	bl	assure
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 104]
	ldr	x0, [sp, 72]
	bl	SymTable_getLength
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 104]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 897
	bl	assure
.L46:
	adrp	x0, .LC50
	add	x1, x0, :lo12:.LC50
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L49
	adrp	x0, .LC50
	add	x1, x0, :lo12:.LC50
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L49
	mov	w0, 1
	b	.L50
.L49:
	mov	w0, 0
.L50:
	mov	w1, 903
	bl	assure
	adrp	x0, .LC51
	add	x1, x0, :lo12:.LC51
	ldr	x0, [sp, 88]
	bl	SymTable_get
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L51
	adrp	x0, .LC51
	add	x1, x0, :lo12:.LC51
	ldr	x0, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bne	.L51
	mov	w0, 1
	b	.L52
.L51:
	mov	w0, 0
.L52:
	mov	w1, 905
	bl	assure
	ldr	x0, [sp, 72]
	bl	SymTable_free
	ldr	x0, [sp, 88]
	bl	SymTable_free
	bl	clock
	str	x0, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 96]
	sub	x0, x1, x0
	scvtf	d0, x0
	mov	x0, 145685290680320
	movk	x0, 0x412e, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	ldr	w1, [sp, 28]
	adrp	x0, .LC53
	add	x0, x0, :lo12:.LC53
	bl	printf
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	nop
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	testLargeTable, .-testLargeTable
	.section	.rodata
	.align	3
.LC54:
	.string	"Usage: %s bindingcount\n"
	.align	3
.LC55:
	.string	"bindingcount must be numeric\n"
	.align	3
.LC56:
	.string	"bindingcount cannot be negative\n"
	.align	3
.LC57:
	.string	"End of %s.\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L54
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC54
	add	x1, x0, :lo12:.LC54
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	bl	exit
.L54:
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x3, [x0]
	add	x0, sp, 44
	mov	x2, x0
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x3
	bl	sscanf
	cmp	w0, 1
	beq	.L55
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x0, [x0]
	mov	x3, x0
	mov	x2, 29
	mov	x1, 1
	adrp	x0, .LC55
	add	x0, x0, :lo12:.LC55
	bl	fwrite
	mov	w0, 1
	bl	exit
.L55:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L56
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x0, [x0]
	mov	x3, x0
	mov	x2, 32
	mov	x1, 1
	adrp	x0, .LC56
	add	x0, x0, :lo12:.LC56
	bl	fwrite
	mov	w0, 1
	bl	exit
.L56:
	bl	setCpuTimeLimit
	bl	testBasics
	bl	testKeyComparison
	bl	testKeyOwnership
	bl	testRemove
	bl	testMap
	bl	testEmptyTable
	bl	testEmptyKey
	bl	testNullValue
	bl	testLongKey
	bl	testTableOfTables
	bl	testCollisions
	ldr	w0, [sp, 44]
	bl	testLargeTable
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	puts
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC57
	add	x0, x0, :lo12:.LC57
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3653, %object
	.size	__PRETTY_FUNCTION__.3653, 13
__PRETTY_FUNCTION__.3653:
	.string	"printBinding"
	.align	3
	.type	__PRETTY_FUNCTION__.3659, %object
	.size	__PRETTY_FUNCTION__.3659, 19
__PRETTY_FUNCTION__.3659:
	.string	"printBindingSimple"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
