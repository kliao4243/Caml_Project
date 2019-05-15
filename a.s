	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
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
	movq	%rax, 8(%rsp)
	movl	$20, %edi
	callq	_malloc
	movabsq	$4294967297, %rcx       ## imm = 0x100000001
	movq	%rcx, (%rax)
	movq	%rcx, 8(%rax)
	movl	$2, 16(%rax)
	movq	%rax, 64(%rsp)
	movq	8(%rsp), %rcx
	leaq	16(%rsp), %rdi
	movl	$1, %esi
	movl	$5, %edx
	movq	%rax, %r8
	callq	_build_track
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rdx
	movq	%rdx, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movl	60(%rsp), %ecx
                                        ## kill: def $edx killed $edx killed $rdx
	callq	_generate_music
	xorl	%eax, %eax
	addq	$88, %rsp
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
	leaq	L_fmt.6(%rip), %rbx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	28(%rsp), %esi
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
	movq	%rdi, %rax
	movl	%esi, -52(%rsp)
	movl	%edx, -56(%rsp)
	movq	%rcx, -16(%rsp)
	movq	%r8, -24(%rsp)
	movq	%rcx, -40(%rsp)
	movq	%r8, -48(%rsp)
	movq	-32(%rsp), %rdx
	movq	%rdx, 16(%rdi)
	movq	%rcx, 8(%rdi)
	movq	%r8, (%rdi)
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%g\n"

"L_4#":                                 ## @"4#"
	.asciz	"1#1"

"L_4#.2":                               ## @"4#.2"
	.asciz	"2#1"

"L_4#.3":                               ## @"4#.3"
	.asciz	"3#1"

"L_4#.4":                               ## @"4#.4"
	.asciz	"4#1"

"L_4#.5":                               ## @"4#.5"
	.asciz	"5#1"

L_fmt.6:                                ## @fmt.6
	.asciz	"%d\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%g\n"

L_fmt.8:                                ## @fmt.8
	.asciz	"%d\n"

L_fmt.9:                                ## @fmt.9
	.asciz	"%g\n"


.subsections_via_symbols
