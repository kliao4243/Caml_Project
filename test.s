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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%esi, 36(%rsp)
	movl	%edx, 32(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movl	$80, %edi
	callq	_malloc
	leaq	"L_4#.10"(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	"L_4#.11"(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	"L_4#.12"(%rip), %rcx
	movq	%rcx, 16(%rax)
	leaq	"L_4#.13"(%rip), %rcx
	movq	%rcx, 24(%rax)
	leaq	"L_4#.14"(%rip), %rcx
	movq	%rcx, 32(%rax)
	leaq	"L_4#.15"(%rip), %rcx
	movq	%rcx, 40(%rax)
	leaq	"L_4#.16"(%rip), %rcx
	movq	%rcx, 48(%rax)
	leaq	"L_4#.17"(%rip), %rcx
	movq	%rcx, 56(%rax)
	leaq	"L_4#.18"(%rip), %rcx
	movq	%rcx, 64(%rax)
	leaq	"L_4#.19"(%rip), %rcx
	movq	%rcx, 72(%rax)
	movq	%rax, 16(%rsp)
	movl	$160, %edi
	callq	_malloc
	movq	16(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	16(%rsp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	16(%rsp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	16(%rsp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, 40(%rax)
	movq	16(%rsp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 48(%rax)
	movq	16(%rsp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	16(%rsp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 64(%rax)
	movq	16(%rsp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, 72(%rax)
	movq	16(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 80(%rax)
	movq	16(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 88(%rax)
	movq	16(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 96(%rax)
	movq	16(%rsp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 104(%rax)
	movq	16(%rsp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 112(%rax)
	movq	16(%rsp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, 120(%rax)
	movq	16(%rsp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 128(%rax)
	movq	16(%rsp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, 136(%rax)
	movq	16(%rsp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 144(%rax)
	movq	16(%rsp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, 152(%rax)
	movq	%rax, 48(%rsp)
	movl	$40, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	%rax, 8(%rsp)
	movl	$80, %edi
	callq	_malloc
	movq	8(%rsp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rax)
	movq	8(%rsp), %rcx
	movl	4(%rcx), %ecx
	movl	%ecx, 4(%rax)
	movq	8(%rsp), %rcx
	movl	8(%rcx), %ecx
	movl	%ecx, 8(%rax)
	movq	8(%rsp), %rcx
	movl	12(%rcx), %ecx
	movl	%ecx, 12(%rax)
	movq	8(%rsp), %rcx
	movl	16(%rcx), %ecx
	movl	%ecx, 16(%rax)
	movq	8(%rsp), %rcx
	movl	20(%rcx), %ecx
	movl	%ecx, 20(%rax)
	movq	8(%rsp), %rcx
	movl	24(%rcx), %ecx
	movl	%ecx, 24(%rax)
	movq	8(%rsp), %rcx
	movl	28(%rcx), %ecx
	movl	%ecx, 28(%rax)
	movq	8(%rsp), %rcx
	movl	32(%rcx), %ecx
	movl	%ecx, 32(%rax)
	movq	8(%rsp), %rcx
	movl	36(%rcx), %ecx
	movl	%ecx, 36(%rax)
	movq	8(%rsp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 40(%rax)
	movq	8(%rsp), %rcx
	movl	4(%rcx), %ecx
	movl	%ecx, 44(%rax)
	movq	8(%rsp), %rcx
	movl	8(%rcx), %ecx
	movl	%ecx, 48(%rax)
	movq	8(%rsp), %rcx
	movl	12(%rcx), %ecx
	movl	%ecx, 52(%rax)
	movq	8(%rsp), %rcx
	movl	16(%rcx), %ecx
	movl	%ecx, 56(%rax)
	movq	8(%rsp), %rcx
	movl	20(%rcx), %ecx
	movl	%ecx, 60(%rax)
	movq	8(%rsp), %rcx
	movl	24(%rcx), %ecx
	movl	%ecx, 64(%rax)
	movq	8(%rsp), %rcx
	movl	28(%rcx), %ecx
	movl	%ecx, 68(%rax)
	movq	8(%rsp), %rcx
	movl	32(%rcx), %ecx
	movl	%ecx, 72(%rax)
	movq	8(%rsp), %rcx
	movl	36(%rcx), %ecx
	movl	%ecx, 76(%rax)
	movq	%rax, 40(%rsp)
	movl	36(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	32(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	$0, 28(%rsp)
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_2:                                 ## %while_body
                                        ##   in Loop: Header=BB2_1 Depth=1
	movq	64(%rsp), %rax
	movslq	28(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	48(%rsp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	56(%rsp), %rax
	movslq	28(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	40(%rsp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	incl	28(%rsp)
LBB2_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	28(%rsp), %eax
	cmpl	32(%rsp), %eax
	jl	LBB2_2
## %bb.3:                               ## %merge
	movq	48(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	movq	88(%rsp), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rax, 8(%rbx)
	movq	%rcx, (%rbx)
	movq	%rbx, %rax
	addq	$96, %rsp
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

L_fmt.6:                                ## @fmt.6
	.asciz	"%d\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%g\n"

L_fmt.8:                                ## @fmt.8
	.asciz	"%d\n"

L_fmt.9:                                ## @fmt.9
	.asciz	"%g\n"

"L_4#.10":                              ## @"4#.10"
	.asciz	"1b1"

"L_4#.11":                              ## @"4#.11"
	.asciz	"1b1"

"L_4#.12":                              ## @"4#.12"
	.asciz	"1b1"

"L_4#.13":                              ## @"4#.13"
	.asciz	"1b1"

"L_4#.14":                              ## @"4#.14"
	.asciz	"1b1"

"L_4#.15":                              ## @"4#.15"
	.asciz	"1b1"

"L_4#.16":                              ## @"4#.16"
	.asciz	"1b1"

"L_4#.17":                              ## @"4#.17"
	.asciz	"1b1"

"L_4#.18":                              ## @"4#.18"
	.asciz	"1b1"

"L_4#.19":                              ## @"4#.19"
	.asciz	"1b1"


.subsections_via_symbols
