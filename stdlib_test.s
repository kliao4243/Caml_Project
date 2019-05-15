	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movl	$40, %edi
	callq	_malloc
	leaq	"L_4#"(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	"L_4#.2"(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	"L_4#.3"(%rip), %rcx
	movq	%rcx, 16(%rax)
	leaq	"L_4#.4"(%rip), %rcx
	movq	%rcx, 24(%rax)
	leaq	"L_4#.5"(%rip), %rcx
	movq	%rcx, 32(%rax)
	movq	%rax, 48(%rsp)
	movl	$20, %edi
	callq	_malloc
	movabsq	$4294967297, %rcx       ## imm = 0x100000001
	movq	%rcx, (%rax)
	movq	%rcx, 8(%rax)
	movl	$2, 16(%rax)
	movq	%rax, 32(%rsp)
	movl	$40, %edi
	callq	_malloc
	leaq	"L_4#.6"(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	"L_4#.7"(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	"L_4#.8"(%rip), %rcx
	movq	%rcx, 16(%rax)
	leaq	"L_4#.9"(%rip), %rcx
	movq	%rcx, 24(%rax)
	leaq	"L_4#.10"(%rip), %rcx
	movq	%rcx, 32(%rax)
	movq	%rax, 40(%rsp)
	movq	32(%rsp), %r8
	movq	48(%rsp), %rcx
	leaq	80(%rsp), %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	_build_track
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %r8
	movq	40(%rsp), %rcx
	leaq	56(%rsp), %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	_build_track
	movq	56(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rax, 104(%rsp)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movl	24(%rsp), %edx
	movl	28(%rsp), %ecx
	callq	_generate_music
	leaq	L_123(%rip), %rdi
	xorl	%eax, %eax
	callq	_puts
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movl	24(%rsp), %edx
	movl	28(%rsp), %ecx
	callq	_generate_music
	xorl	%eax, %eax
	addq	$136, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_generate_music         ## -- Begin function generate_music
	.p2align	4, 0x90
_generate_music:                        ## @generate_music
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movl	%ecx, 28(%rsp)
	movl	%edx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	leaq	L_123.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_puts
	movl	28(%rsp), %esi
	leaq	L_fmt.11(%rip), %rbx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	24(%rsp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$0, 4(%rsp)
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_2:                                 ## %while_body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%eax, %eax
	callq	_pitch_to_int
	movq	%rbx, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_printf
	movq	8(%rsp), %rax
	movslq	4(%rsp), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_printf
	incl	4(%rsp)
LBB1_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	cmpl	24(%rsp), %eax
	jl	LBB1_2
## %bb.3:                               ## %merge
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_build_track            ## -- Begin function build_track
	.p2align	4, 0x90
_build_track:                           ## @build_track
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%esi, 20(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r8, 40(%rsp)
	movl	$160, %edi
	callq	_malloc
	leaq	"L_4#.16"(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	"L_4#.17"(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	"L_4#.18"(%rip), %rcx
	movq	%rcx, 16(%rax)
	leaq	"L_4#.19"(%rip), %rcx
	movq	%rcx, 24(%rax)
	leaq	"L_4#.20"(%rip), %rcx
	movq	%rcx, 32(%rax)
	leaq	"L_4#.21"(%rip), %rcx
	movq	%rcx, 40(%rax)
	leaq	"L_4#.22"(%rip), %rcx
	movq	%rcx, 48(%rax)
	leaq	"L_4#.23"(%rip), %rcx
	movq	%rcx, 56(%rax)
	leaq	"L_4#.24"(%rip), %rcx
	movq	%rcx, 64(%rax)
	leaq	"L_4#.25"(%rip), %rcx
	movq	%rcx, 72(%rax)
	leaq	"L_4#.26"(%rip), %rcx
	movq	%rcx, 80(%rax)
	leaq	"L_4#.27"(%rip), %rcx
	movq	%rcx, 88(%rax)
	leaq	"L_4#.28"(%rip), %rcx
	movq	%rcx, 96(%rax)
	leaq	"L_4#.29"(%rip), %rcx
	movq	%rcx, 104(%rax)
	leaq	"L_4#.30"(%rip), %rcx
	movq	%rcx, 112(%rax)
	leaq	"L_4#.31"(%rip), %rcx
	movq	%rcx, 120(%rax)
	leaq	"L_4#.32"(%rip), %rcx
	movq	%rcx, 128(%rax)
	leaq	"L_4#.33"(%rip), %rcx
	movq	%rcx, 136(%rax)
	leaq	"L_4#.34"(%rip), %rcx
	movq	%rcx, 144(%rax)
	leaq	"L_4#.35"(%rip), %rcx
	movq	%rcx, 152(%rax)
	movq	%rax, 32(%rsp)
	movl	$80, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	%rax, 24(%rsp)
	movl	20(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 72(%rsp)
	movl	$0, 12(%rsp)
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_2:                                 ## %while_body
                                        ##   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	movslq	12(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	32(%rsp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	40(%rsp), %rax
	movslq	12(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	24(%rsp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	incl	12(%rsp)
LBB2_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	jl	LBB2_2
## %bb.3:                               ## %merge
	movq	32(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movq	72(%rsp), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rax, 8(%rbx)
	movq	%rcx, (%rbx)
	movq	%rbx, %rax
	addq	$80, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%g\n"

"L_4#":                                 ## @"4#"
	.asciz	"1^4"

"L_4#.2":                               ## @"4#.2"
	.asciz	"2^4"

"L_4#.3":                               ## @"4#.3"
	.asciz	"3^4"

"L_4#.4":                               ## @"4#.4"
	.asciz	"4^4"

"L_4#.5":                               ## @"4#.5"
	.asciz	"5^4"

"L_4#.6":                               ## @"4#.6"
	.asciz	"1^5"

"L_4#.7":                               ## @"4#.7"
	.asciz	"2^5"

"L_4#.8":                               ## @"4#.8"
	.asciz	"3^5"

"L_4#.9":                               ## @"4#.9"
	.asciz	"4^5"

"L_4#.10":                              ## @"4#.10"
	.asciz	"5^5"

L_123:                                  ## @"123"
	.asciz	"adsfsdaf"

L_fmt.11:                               ## @fmt.11
	.asciz	"%d\n"

L_fmt.12:                               ## @fmt.12
	.asciz	"%g\n"

L_123.13:                               ## @"123.13"
	.asciz	"track_start"

L_fmt.14:                               ## @fmt.14
	.asciz	"%d\n"

L_fmt.15:                               ## @fmt.15
	.asciz	"%g\n"

"L_4#.16":                              ## @"4#.16"
	.asciz	"1b1"

"L_4#.17":                              ## @"4#.17"
	.asciz	"1b1"

"L_4#.18":                              ## @"4#.18"
	.asciz	"1b1"

"L_4#.19":                              ## @"4#.19"
	.asciz	"1b1"

"L_4#.20":                              ## @"4#.20"
	.asciz	"1b1"

"L_4#.21":                              ## @"4#.21"
	.asciz	"1b1"

"L_4#.22":                              ## @"4#.22"
	.asciz	"1b1"

"L_4#.23":                              ## @"4#.23"
	.asciz	"1b1"

"L_4#.24":                              ## @"4#.24"
	.asciz	"1b1"

"L_4#.25":                              ## @"4#.25"
	.asciz	"1b1"

"L_4#.26":                              ## @"4#.26"
	.asciz	"1b1"

"L_4#.27":                              ## @"4#.27"
	.asciz	"1b1"

"L_4#.28":                              ## @"4#.28"
	.asciz	"1b1"

"L_4#.29":                              ## @"4#.29"
	.asciz	"1b1"

"L_4#.30":                              ## @"4#.30"
	.asciz	"1b1"

"L_4#.31":                              ## @"4#.31"
	.asciz	"1b1"

"L_4#.32":                              ## @"4#.32"
	.asciz	"1b1"

"L_4#.33":                              ## @"4#.33"
	.asciz	"1b1"

"L_4#.34":                              ## @"4#.34"
	.asciz	"1b1"

"L_4#.35":                              ## @"4#.35"
	.asciz	"1b1"


.subsections_via_symbols
