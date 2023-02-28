	.arch armv8-a
	.file	"teststr.c"
	.text
	.section	.rodata
	.align	3
.LC21:
	.string	"      Test at line %d failed.\n"
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
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
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
	mov	x0, 60
	str	x0, [sp, 16]
	mov	x0, 60
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
.LC22:
	.string	"teststr.c"
	.align	3
.LC23:
	.string	"pcStr != NULL"
	.align	3
.LC24:
	.string	"iSize > 0"
	.text
	.align	2
	.type	randomString, %function
randomString:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L6
	adrp	x0, __PRETTY_FUNCTION__.3624
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3624
	mov	w2, 66
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	__assert_fail
.L6:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L7
	adrp	x0, __PRETTY_FUNCTION__.3624
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3624
	mov	w2, 67
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L7:
	str	wzr, [sp, 44]
	b	.L8
.L9:
	bl	rand
	and	w1, w0, 255
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	and	w1, w1, 127
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L8:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L9
	ldrsw	x0, [sp, 20]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	randomString, .-randomString
	.section	.rodata
	.align	3
.LC25:
	.string	"Testing Str_getLength()"
	.align	3
.LC26:
	.string	"   Boundary Tests"
	.align	3
.LC27:
	.string	"   Statement Tests"
	.align	3
.LC28:
	.string	"   Stress Tests"
	.text
	.align	2
	.type	testGetLength, %function
testGetLength:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #1072
	.cfi_def_cfa_offset 1072
	stp	x29, x30, [sp]
	.cfi_offset 29, -1072
	.cfi_offset 30, -1064
	mov	x29, sp
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	strb	wzr, [sp, 1040]
	mov	w0, 115
	strb	w0, [sp, 1041]
	add	x0, sp, 1040
	bl	Str_getLength
	str	x0, [sp, 1056]
	add	x0, sp, 1040
	bl	strlen
	str	x0, [sp, 1048]
	ldr	x1, [sp, 1056]
	ldr	x0, [sp, 1048]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 92
	bl	assure
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 1032
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x0, sp, 1032
	bl	Str_getLength
	str	x0, [sp, 1056]
	add	x0, sp, 1032
	bl	strlen
	str	x0, [sp, 1048]
	ldr	x1, [sp, 1056]
	ldr	x0, [sp, 1048]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 102
	bl	assure
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 1024
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x0, sp, 1024
	bl	Str_getLength
	str	x0, [sp, 1056]
	add	x0, sp, 1024
	bl	strlen
	str	x0, [sp, 1048]
	ldr	x1, [sp, 1056]
	ldr	x0, [sp, 1048]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 109
	bl	assure
	mov	w0, 71
	strb	w0, [sp, 1016]
	mov	w0, 101
	strb	w0, [sp, 1017]
	mov	w0, 104
	strb	w0, [sp, 1018]
	mov	w0, 114
	strb	w0, [sp, 1019]
	mov	w0, 105
	strb	w0, [sp, 1020]
	mov	w0, 103
	strb	w0, [sp, 1021]
	strb	wzr, [sp, 1022]
	mov	w0, 115
	strb	w0, [sp, 1023]
	add	x0, sp, 1016
	bl	Str_getLength
	str	x0, [sp, 1056]
	add	x0, sp, 1016
	bl	strlen
	str	x0, [sp, 1048]
	ldr	x1, [sp, 1056]
	ldr	x0, [sp, 1048]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 116
	bl	assure
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	str	wzr, [sp, 1068]
	b	.L11
.L12:
	add	x0, sp, 16
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 16
	bl	Str_getLength
	str	x0, [sp, 1056]
	add	x0, sp, 16
	bl	strlen
	str	x0, [sp, 1048]
	ldr	x1, [sp, 1056]
	ldr	x0, [sp, 1048]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 130
	bl	assure
	ldr	w0, [sp, 1068]
	add	w0, w0, 1
	str	w0, [sp, 1068]
.L11:
	ldr	w0, [sp, 1068]
	cmp	w0, 9
	ble	.L12
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 1072
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	testGetLength, .-testGetLength
	.section	.rodata
	.align	3
.LC0:
	.byte	82
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	0
	.align	3
.LC1:
	.byte	82
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	115
	.text
	.section	.rodata
	.align	3
.LC29:
	.string	"Testing Str_copy()"
	.text
	.align	2
	.type	testCopy, %function
testCopy:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #3152
	.cfi_def_cfa_offset 3152
	stp	x29, x30, [sp]
	.cfi_offset 29, -3152
	.cfi_offset 30, -3144
	mov	x29, sp
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	puts
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	strb	wzr, [sp, 3128]
	mov	w0, 115
	strb	w0, [sp, 3129]
	mov	w0, 100
	strb	w0, [sp, 3120]
	mov	w0, 100
	strb	w0, [sp, 3121]
	mov	w0, 100
	strb	w0, [sp, 3112]
	mov	w0, 100
	strb	w0, [sp, 3113]
	add	x1, sp, 3128
	add	x0, sp, 3120
	bl	Str_copy
	str	x0, [sp, 3136]
	add	x0, sp, 3120
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 153
	bl	assure
	add	x1, sp, 3128
	add	x0, sp, 3112
	bl	strcpy
	add	x1, sp, 3112
	add	x0, sp, 3120
	mov	x2, 2
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 155
	bl	assure
	strb	wzr, [sp, 3104]
	mov	w0, 115
	strb	w0, [sp, 3105]
	strb	wzr, [sp, 3096]
	mov	w0, 100
	strb	w0, [sp, 3097]
	strb	wzr, [sp, 3088]
	mov	w0, 100
	strb	w0, [sp, 3089]
	add	x1, sp, 3104
	add	x0, sp, 3096
	bl	Str_copy
	str	x0, [sp, 3136]
	add	x0, sp, 3096
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 163
	bl	assure
	add	x1, sp, 3104
	add	x0, sp, 3088
	bl	strcpy
	add	x1, sp, 3088
	add	x0, sp, 3096
	mov	x2, 2
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 165
	bl	assure
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 3080
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 3072
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 3064
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 3080
	add	x0, sp, 3072
	bl	Str_copy
	str	x0, [sp, 3136]
	add	x0, sp, 3072
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 176
	bl	assure
	add	x1, sp, 3080
	add	x0, sp, 3064
	bl	strcpy
	add	x1, sp, 3064
	add	x0, sp, 3072
	mov	x2, 6
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 178
	bl	assure
	mov	w0, 71
	strb	w0, [sp, 3056]
	mov	w0, 101
	strb	w0, [sp, 3057]
	mov	w0, 104
	strb	w0, [sp, 3058]
	mov	w0, 114
	strb	w0, [sp, 3059]
	mov	w0, 105
	strb	w0, [sp, 3060]
	mov	w0, 103
	strb	w0, [sp, 3061]
	strb	wzr, [sp, 3062]
	mov	w0, 115
	strb	w0, [sp, 3063]
	mov	w0, 100
	strb	w0, [sp, 3048]
	mov	w0, 100
	strb	w0, [sp, 3049]
	mov	w0, 100
	strb	w0, [sp, 3050]
	mov	w0, 100
	strb	w0, [sp, 3051]
	mov	w0, 100
	strb	w0, [sp, 3052]
	mov	w0, 100
	strb	w0, [sp, 3053]
	mov	w0, 100
	strb	w0, [sp, 3054]
	mov	w0, 100
	strb	w0, [sp, 3055]
	mov	w0, 100
	strb	w0, [sp, 3040]
	mov	w0, 100
	strb	w0, [sp, 3041]
	mov	w0, 100
	strb	w0, [sp, 3042]
	mov	w0, 100
	strb	w0, [sp, 3043]
	mov	w0, 100
	strb	w0, [sp, 3044]
	mov	w0, 100
	strb	w0, [sp, 3045]
	mov	w0, 100
	strb	w0, [sp, 3046]
	mov	w0, 100
	strb	w0, [sp, 3047]
	add	x1, sp, 3056
	add	x0, sp, 3048
	bl	Str_copy
	str	x0, [sp, 3136]
	add	x0, sp, 3048
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 186
	bl	assure
	add	x1, sp, 3056
	add	x0, sp, 3040
	bl	strcpy
	add	x1, sp, 3040
	add	x0, sp, 3048
	mov	x2, 8
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 188
	bl	assure
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 3032
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 3024
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 3016
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 3032
	add	x0, sp, 3024
	bl	Str_copy
	str	x0, [sp, 3136]
	add	x0, sp, 3024
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 196
	bl	assure
	add	x1, sp, 3032
	add	x0, sp, 3016
	bl	strcpy
	add	x1, sp, 3016
	add	x0, sp, 3024
	mov	x2, 6
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 198
	bl	assure
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	str	wzr, [sp, 3148]
	b	.L14
.L15:
	add	x0, sp, 16
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1016
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 2016
	add	x1, sp, 1016
	mov	x2, 1000
	bl	memcpy
	add	x1, sp, 16
	add	x0, sp, 1016
	bl	Str_copy
	str	x0, [sp, 3136]
	add	x0, sp, 1016
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 215
	bl	assure
	add	x1, sp, 16
	add	x0, sp, 2016
	bl	strcpy
	add	x1, sp, 2016
	add	x0, sp, 1016
	mov	x2, 1000
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 217
	bl	assure
	ldr	w0, [sp, 3148]
	add	w0, w0, 1
	str	w0, [sp, 3148]
.L14:
	ldr	w0, [sp, 3148]
	cmp	w0, 9
	ble	.L15
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 3152
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	testCopy, .-testCopy
	.section	.rodata
	.align	3
.LC2:
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.align	3
.LC3:
	.byte	0
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.text
	.section	.rodata
	.align	3
.LC30:
	.string	"Testing Str_concat()"
	.text
	.align	2
	.type	testConcat, %function
testConcat:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #3152
	.cfi_def_cfa_offset 3152
	stp	x29, x30, [sp]
	.cfi_offset 29, -3152
	.cfi_offset 30, -3144
	mov	x29, sp
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	puts
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 3128
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 3120
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 3112
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 3128
	add	x0, sp, 3120
	bl	Str_concat
	str	x0, [sp, 3136]
	add	x0, sp, 3120
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 240
	bl	assure
	add	x1, sp, 3128
	add	x0, sp, 3112
	bl	strcat
	add	x1, sp, 3112
	add	x0, sp, 3120
	mov	x2, 6
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 242
	bl	assure
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 3104
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 3096
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 3088
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 3104
	add	x0, sp, 3096
	bl	Str_concat
	str	x0, [sp, 3136]
	add	x0, sp, 3096
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 250
	bl	assure
	add	x1, sp, 3104
	add	x0, sp, 3088
	bl	strcat
	add	x1, sp, 3088
	add	x0, sp, 3096
	mov	x2, 6
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 252
	bl	assure
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 3080
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 3072
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 3064
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 3080
	add	x0, sp, 3072
	bl	Str_concat
	str	x0, [sp, 3136]
	add	x0, sp, 3072
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 260
	bl	assure
	add	x1, sp, 3080
	add	x0, sp, 3064
	bl	strcat
	add	x1, sp, 3064
	add	x0, sp, 3072
	mov	x2, 6
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 262
	bl	assure
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 3056
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 3040
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 3024
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	add	x1, sp, 3056
	add	x0, sp, 3040
	bl	Str_concat
	str	x0, [sp, 3136]
	add	x0, sp, 3040
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 275
	bl	assure
	add	x1, sp, 3056
	add	x0, sp, 3024
	bl	strcat
	add	x1, sp, 3024
	add	x0, sp, 3040
	mov	x2, 10
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 277
	bl	assure
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	add	x0, sp, 1024
	mov	x1, 1000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 2024
	mov	x1, 1000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 3148]
	b	.L17
.L18:
	add	x0, sp, 24
	mov	w1, 500
	bl	randomString
	add	x0, sp, 1024
	mov	w1, 500
	bl	randomString
	add	x0, sp, 2024
	add	x1, sp, 1024
	mov	x2, 1000
	bl	memcpy
	add	x1, sp, 24
	add	x0, sp, 1024
	bl	Str_concat
	str	x0, [sp, 3136]
	add	x0, sp, 1024
	ldr	x1, [sp, 3136]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 294
	bl	assure
	add	x1, sp, 24
	add	x0, sp, 2024
	bl	strcat
	add	x1, sp, 2024
	add	x0, sp, 1024
	mov	x2, 1000
	bl	memcmp
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 296
	bl	assure
	ldr	w0, [sp, 3148]
	add	w0, w0, 1
	str	w0, [sp, 3148]
.L17:
	ldr	w0, [sp, 3148]
	cmp	w0, 9
	ble	.L18
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 3152
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	testConcat, .-testConcat
	.section	.rodata
	.align	3
.LC4:
	.byte	0
	.byte	115
	.byte	115
	.byte	115
	.byte	115
	.byte	115
	.align	3
.LC5:
	.byte	82
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	100
	.align	3
.LC6:
	.byte	66
	.byte	97
	.byte	98
	.byte	101
	.byte	0
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.byte	100
	.text
	.align	2
	.type	sign, %function
sign:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bge	.L20
	mov	w0, -1
	b	.L21
.L20:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	ble	.L22
	mov	w0, 1
	b	.L21
.L22:
	mov	w0, 0
.L21:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	sign, .-sign
	.section	.rodata
	.align	3
.LC31:
	.string	"Testing Str_compare()"
	.text
	.align	2
	.type	testCompare, %function
testCompare:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #2304
	.cfi_def_cfa_offset 2304
	stp	x29, x30, [sp]
	.cfi_offset 29, -2304
	.cfi_offset 30, -2296
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -2288
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	puts
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 2280
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 2272
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2272
	add	x0, sp, 2280
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2272
	add	x0, sp, 2280
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 331
	bl	assure
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 2264
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 2256
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2256
	add	x0, sp, 2264
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2256
	add	x0, sp, 2264
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 339
	bl	assure
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 2248
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 2240
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2240
	add	x0, sp, 2248
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2240
	add	x0, sp, 2248
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 347
	bl	assure
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 2232
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 2224
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2224
	add	x0, sp, 2232
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2224
	add	x0, sp, 2232
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 358
	bl	assure
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 2216
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 2208
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2208
	add	x0, sp, 2216
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2208
	add	x0, sp, 2216
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 366
	bl	assure
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 2200
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 2192
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2192
	add	x0, sp, 2200
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2192
	add	x0, sp, 2200
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 374
	bl	assure
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 2184
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 2176
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2176
	add	x0, sp, 2184
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2176
	add	x0, sp, 2184
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 382
	bl	assure
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 2168
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 2160
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2160
	add	x0, sp, 2168
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2160
	add	x0, sp, 2168
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 390
	bl	assure
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 2152
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 2136
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	add	x1, sp, 2136
	add	x0, sp, 2152
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2136
	add	x0, sp, 2152
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 399
	bl	assure
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 2120
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 2112
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2112
	add	x0, sp, 2120
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2112
	add	x0, sp, 2120
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 408
	bl	assure
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 2104
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	add	x0, sp, 2096
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2096
	add	x0, sp, 2104
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2096
	add	x0, sp, 2104
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 416
	bl	assure
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	add	x0, sp, 2088
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 2080
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2080
	add	x0, sp, 2088
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2080
	add	x0, sp, 2088
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 424
	bl	assure
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	add	x0, sp, 2072
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	add	x0, sp, 2064
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2064
	add	x0, sp, 2072
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2064
	add	x0, sp, 2072
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 432
	bl	assure
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	add	x0, sp, 2056
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	add	x0, sp, 2048
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2048
	add	x0, sp, 2056
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2048
	add	x0, sp, 2056
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 440
	bl	assure
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	add	x0, sp, 2040
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	add	x0, sp, 2032
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2032
	add	x0, sp, 2040
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 2032
	add	x0, sp, 2040
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 448
	bl	assure
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	str	wzr, [sp, 2300]
	b	.L24
.L25:
	add	x0, sp, 32
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1032
	mov	w1, 1000
	bl	randomString
	add	x1, sp, 1032
	add	x0, sp, 32
	bl	Str_compare
	str	w0, [sp, 2296]
	add	x1, sp, 1032
	add	x0, sp, 32
	bl	strcmp
	str	w0, [sp, 2292]
	ldr	w0, [sp, 2296]
	bl	sign
	mov	w19, w0
	ldr	w0, [sp, 2292]
	bl	sign
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 464
	bl	assure
	ldr	w0, [sp, 2300]
	add	w0, w0, 1
	str	w0, [sp, 2300]
.L24:
	ldr	w0, [sp, 2300]
	cmp	w0, 9
	ble	.L25
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 2304
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	testCompare, .-testCompare
	.section	.rodata
	.align	3
.LC7:
	.byte	0
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.align	3
.LC8:
	.byte	0
	.byte	121
	.byte	121
	.byte	121
	.byte	121
	.byte	121
	.align	3
.LC9:
	.byte	82
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	121
	.align	3
.LC10:
	.byte	82
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	120
	.align	3
.LC11:
	.byte	82
	.byte	111
	.byte	116
	.byte	104
	.byte	0
	.byte	121
	.align	3
.LC12:
	.byte	114
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	120
	.align	3
.LC13:
	.byte	66
	.byte	97
	.byte	98
	.byte	101
	.byte	0
	.byte	121
	.align	3
.LC14:
	.byte	66
	.byte	97
	.byte	98
	.byte	101
	.byte	82
	.byte	117
	.byte	116
	.byte	104
	.byte	0
	.byte	120
	.align	3
.LC15:
	.byte	120
	.byte	121
	.byte	0
	.byte	122
	.byte	122
	.byte	122
	.align	3
.LC16:
	.byte	121
	.byte	120
	.byte	0
	.byte	122
	.byte	122
	.byte	122
	.align	3
.LC17:
	.byte	120
	.byte	120
	.byte	0
	.byte	122
	.byte	122
	.byte	122
	.align	3
.LC18:
	.byte	121
	.byte	0
	.byte	122
	.byte	122
	.byte	122
	.byte	122
	.align	3
.LC19:
	.byte	120
	.byte	121
	.byte	121
	.byte	0
	.byte	122
	.byte	122
	.align	3
.LC20:
	.byte	121
	.byte	120
	.byte	120
	.byte	0
	.byte	122
	.byte	122
	.text
	.section	.rodata
	.align	3
.LC32:
	.string	"Testing Str_search()"
	.text
	.align	2
	.type	testSearch, %function
testSearch:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #2448
	.cfi_def_cfa_offset 2448
	stp	x29, x30, [sp]
	.cfi_offset 29, -2448
	.cfi_offset 30, -2440
	mov	x29, sp
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	bl	puts
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	strb	wzr, [sp, 2400]
	strb	wzr, [sp, 2392]
	add	x1, sp, 2392
	add	x0, sp, 2400
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2392
	add	x0, sp, 2400
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 488
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2384
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	strb	wzr, [sp, 2376]
	add	x1, sp, 2376
	add	x0, sp, 2384
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2376
	add	x0, sp, 2384
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 496
	bl	assure
	strb	wzr, [sp, 2368]
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2360
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2360
	add	x0, sp, 2368
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2360
	add	x0, sp, 2368
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 504
	bl	assure
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2352
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	mov	w0, 100
	strh	w0, [sp, 2344]
	add	x1, sp, 2344
	add	x0, sp, 2352
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2344
	add	x0, sp, 2352
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 515
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2336
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC34
	add	x1, x0, :lo12:.LC34
	add	x0, sp, 2328
	ldrh	w2, [x1]
	strh	w2, [x0]
	ldrb	w1, [x1, 2]
	strb	w1, [x0, 2]
	add	x1, sp, 2328
	add	x0, sp, 2336
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2328
	add	x0, sp, 2336
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 523
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2320
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC35
	add	x1, x0, :lo12:.LC35
	add	x0, sp, 2312
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	add	x1, sp, 2312
	add	x0, sp, 2320
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2312
	add	x0, sp, 2320
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 531
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2304
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2296
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2296
	add	x0, sp, 2304
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2296
	add	x0, sp, 2304
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 539
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2288
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	add	x0, sp, 2280
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2280
	add	x0, sp, 2288
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2280
	add	x0, sp, 2288
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 547
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2272
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	add	x0, sp, 2264
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2264
	add	x0, sp, 2272
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2264
	add	x0, sp, 2272
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 555
	bl	assure
	mov	w0, 24929
	movk	w0, 0x62, lsl 16
	str	w0, [sp, 2256]
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	add	x0, sp, 2248
	ldrh	w2, [x1]
	strh	w2, [x0]
	ldrb	w1, [x1, 2]
	strb	w1, [x0, 2]
	add	x1, sp, 2248
	add	x0, sp, 2256
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2248
	add	x0, sp, 2256
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 563
	bl	assure
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 2240
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	add	x0, sp, 2232
	ldrh	w2, [x1]
	strh	w2, [x0]
	ldrb	w1, [x1, 2]
	strb	w1, [x0, 2]
	add	x1, sp, 2232
	add	x0, sp, 2240
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2232
	add	x0, sp, 2240
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 571
	bl	assure
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 2224
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	mov	w0, 24929
	movk	w0, 0x62, lsl 16
	str	w0, [sp, 2216]
	add	x1, sp, 2216
	add	x0, sp, 2224
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2216
	add	x0, sp, 2224
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 579
	bl	assure
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	add	x0, sp, 2208
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	mov	w0, 24929
	movk	w0, 0x62, lsl 16
	str	w0, [sp, 2200]
	add	x1, sp, 2200
	add	x0, sp, 2208
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2200
	add	x0, sp, 2208
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 587
	bl	assure
	adrp	x0, .LC41
	add	x1, x0, :lo12:.LC41
	add	x0, sp, 2192
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	mov	w0, 24929
	movk	w0, 0x62, lsl 16
	str	w0, [sp, 2184]
	add	x1, sp, 2184
	add	x0, sp, 2192
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2184
	add	x0, sp, 2192
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 595
	bl	assure
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	add	x0, sp, 2176
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 2168
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	add	x1, sp, 2168
	add	x0, sp, 2176
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2168
	add	x0, sp, 2176
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 603
	bl	assure
	adrp	x0, .LC41
	add	x1, x0, :lo12:.LC41
	add	x0, sp, 2160
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 2152
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	add	x1, sp, 2152
	add	x0, sp, 2160
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2152
	add	x0, sp, 2160
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 611
	bl	assure
	mov	x0, 24929
	movk	x0, 0x6161, lsl 16
	movk	x0, 0x6161, lsl 32
	movk	x0, 0x62, lsl 48
	str	x0, [sp, 2144]
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 2136
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	add	x1, sp, 2136
	add	x0, sp, 2144
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2136
	add	x0, sp, 2144
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 619
	bl	assure
	adrp	x0, .LC42
	add	x1, x0, :lo12:.LC42
	add	x0, sp, 2120
	ldr	x2, [x1]
	str	x2, [x0]
	ldrb	w1, [x1, 8]
	strb	w1, [x0, 8]
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 2112
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	add	x1, sp, 2112
	add	x0, sp, 2120
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2112
	add	x0, sp, 2120
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 627
	bl	assure
	mov	x0, 25185
	movk	x0, 0x6463, lsl 16
	movk	x0, 0x6665, lsl 32
	movk	x0, 0x67, lsl 48
	str	x0, [sp, 2104]
	adrp	x0, .LC43
	add	x1, x0, :lo12:.LC43
	add	x0, sp, 2096
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 1]
	str	w1, [x0, 1]
	add	x1, sp, 2096
	add	x0, sp, 2104
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2096
	add	x0, sp, 2104
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 635
	bl	assure
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	add	x0, sp, 2088
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	mov	x0, 25185
	movk	x0, 0x6463, lsl 16
	movk	x0, 0x6665, lsl 32
	movk	x0, 0x67, lsl 48
	str	x0, [sp, 2080]
	add	x1, sp, 2080
	add	x0, sp, 2088
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2080
	add	x0, sp, 2088
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 643
	bl	assure
	adrp	x0, .LC44
	add	x1, x0, :lo12:.LC44
	add	x0, sp, 2064
	ldr	x2, [x1]
	str	x2, [x0]
	ldrb	w1, [x1, 8]
	strb	w1, [x0, 8]
	adrp	x0, .LC45
	add	x1, x0, :lo12:.LC45
	add	x0, sp, 2056
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 2]
	str	w1, [x0, 2]
	add	x1, sp, 2056
	add	x0, sp, 2064
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2056
	add	x0, sp, 2064
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 651
	bl	assure
	mov	w0, 24929
	movk	w0, 0x61, lsl 16
	str	w0, [sp, 2048]
	mov	w0, 97
	strh	w0, [sp, 2040]
	add	x1, sp, 2040
	add	x0, sp, 2048
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2040
	add	x0, sp, 2048
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 659
	bl	assure
	adrp	x0, .LC46
	add	x1, x0, :lo12:.LC46
	add	x0, sp, 2032
	ldr	w2, [x1]
	str	w2, [x0]
	ldr	w1, [x1, 3]
	str	w1, [x0, 3]
	mov	w0, 25185
	movk	w0, 0x63, lsl 16
	str	w0, [sp, 2024]
	add	x1, sp, 2024
	add	x0, sp, 2032
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 2024
	add	x0, sp, 2032
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 667
	bl	assure
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	puts
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	str	wzr, [sp, 2444]
	b	.L27
.L28:
	add	x0, sp, 24
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1024
	mov	w1, 1
	bl	randomString
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 683
	bl	assure
	ldr	w0, [sp, 2444]
	add	w0, w0, 1
	str	w0, [sp, 2444]
.L27:
	ldr	w0, [sp, 2444]
	cmp	w0, 9
	ble	.L28
	str	wzr, [sp, 2440]
	b	.L29
.L30:
	add	x0, sp, 24
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1024
	mov	w1, 2
	bl	randomString
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 697
	bl	assure
	ldr	w0, [sp, 2440]
	add	w0, w0, 1
	str	w0, [sp, 2440]
.L29:
	ldr	w0, [sp, 2440]
	cmp	w0, 9
	ble	.L30
	str	wzr, [sp, 2436]
	b	.L31
.L32:
	add	x0, sp, 24
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1024
	mov	w1, 3
	bl	randomString
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 711
	bl	assure
	ldr	w0, [sp, 2436]
	add	w0, w0, 1
	str	w0, [sp, 2436]
.L31:
	ldr	w0, [sp, 2436]
	cmp	w0, 9
	ble	.L32
	str	wzr, [sp, 2432]
	b	.L33
.L34:
	add	x0, sp, 24
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1024
	mov	w1, 4
	bl	randomString
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 725
	bl	assure
	ldr	w0, [sp, 2432]
	add	w0, w0, 1
	str	w0, [sp, 2432]
.L33:
	ldr	w0, [sp, 2432]
	cmp	w0, 9
	ble	.L34
	str	wzr, [sp, 2428]
	b	.L35
.L36:
	add	x0, sp, 24
	mov	w1, 1000
	bl	randomString
	add	x0, sp, 1024
	mov	w1, 5
	bl	randomString
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	Str_search
	str	x0, [sp, 2416]
	add	x1, sp, 1024
	add	x0, sp, 24
	bl	strstr
	str	x0, [sp, 2408]
	ldr	x1, [sp, 2416]
	ldr	x0, [sp, 2408]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, 739
	bl	assure
	ldr	w0, [sp, 2428]
	add	w0, w0, 1
	str	w0, [sp, 2428]
.L35:
	ldr	w0, [sp, 2428]
	cmp	w0, 9
	ble	.L36
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 2448
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	testSearch, .-testSearch
	.section	.rodata
	.align	3
.LC33:
	.string	"abcde"
	.align	3
.LC34:
	.string	"cd"
	.align	3
.LC35:
	.string	"bcde"
	.align	3
.LC36:
	.string	"abcdf"
	.align	3
.LC37:
	.string	"bcdef"
	.align	3
.LC38:
	.string	"ab"
	.align	3
.LC39:
	.string	"aaab"
	.align	3
.LC40:
	.string	"aaaab"
	.align	3
.LC41:
	.string	"aaaaab"
	.align	3
.LC42:
	.string	"aaaaaaab"
	.align	3
.LC43:
	.string	"abcg"
	.align	3
.LC44:
	.string	"aababaab"
	.align	3
.LC45:
	.string	"abaab"
	.align	3
.LC46:
	.string	"aabbcc"
	.text
	.section	.rodata
	.align	3
.LC47:
	.string	"End of %s.\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	bl	setCpuTimeLimit
	bl	testGetLength
	bl	testCopy
	bl	testConcat
	bl	testCompare
	bl	testSearch
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC47
	add	x0, x0, :lo12:.LC47
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3624, %object
	.size	__PRETTY_FUNCTION__.3624, 13
__PRETTY_FUNCTION__.3624:
	.string	"randomString"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
