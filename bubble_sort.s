	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, 4(%rsp)           ## 4-byte Spill
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, %r15d
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, %r12d
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, %r13d
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, %ebx
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, %ebp
	movl	$50, %edi
	xorl	%eax, %eax
	callq	_ran
	movl	%eax, %r14d
	movl	$28, %edi
	callq	_malloc
	movl	4(%rsp), %ecx           ## 4-byte Reload
	movl	%ecx, (%rax)
	movl	%r15d, 4(%rax)
	movl	%r12d, 8(%rax)
	movl	%r13d, 12(%rax)
	movl	%ebx, 16(%rax)
	movl	%ebp, 20(%rax)
	movl	%r14d, 24(%rax)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	movl	$7, %esi
	callq	_bubble_sort
	movq	%rax, 8(%rsp)
	movl	$0, (%rsp)
	leaq	L_fmt(%rip), %rbx
	cmpl	$6, (%rsp)
	jg	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movslq	(%rsp), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_printf
	incl	(%rsp)
	cmpl	$6, (%rsp)
	jle	LBB0_2
LBB0_3:                                 ## %merge
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bubble_sort            ## -- Begin function bubble_sort
	.p2align	4, 0x90
_bubble_sort:                           ## @bubble_sort
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movl	%esi, -20(%rsp)
	movl	$0, -24(%rsp)
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_7:                                 ## %merge25
                                        ##   in Loop: Header=BB1_1 Depth=1
	incl	-24(%rsp)
LBB1_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movl	-24(%rsp), %eax
	cmpl	-20(%rsp), %eax
	jge	LBB1_8
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rsp), %eax
	incl	%eax
	movl	%eax, -28(%rsp)
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_5:                                 ## %merge
                                        ##   in Loop: Header=BB1_3 Depth=2
	incl	-28(%rsp)
LBB1_3:                                 ## %while4
                                        ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rsp), %eax
	cmpl	-20(%rsp), %eax
	jge	LBB1_7
## %bb.4:                               ## %while_body5
                                        ##   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rsp), %rax
	movslq	-24(%rsp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movslq	-28(%rsp), %rdx
	cmpl	(%rax,%rdx,4), %ecx
	jle	LBB1_5
## %bb.6:                               ## %then
                                        ##   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rsp), %rax
	movslq	-24(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -4(%rsp)
	movslq	-28(%rsp), %rdx
	movl	(%rax,%rdx,4), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-4(%rsp), %eax
	movq	-16(%rsp), %rcx
	movslq	-28(%rsp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	incl	-28(%rsp)
	jmp	LBB1_3
LBB1_8:                                 ## %merge31
	movq	-16(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%g\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%d\n"

L_fmt.3:                                ## @fmt.3
	.asciz	"%g\n"


.subsections_via_symbols
