	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$16, %edi
	callq	_malloc
	movabsq	$8589934593, %rcx       ## imm = 0x200000001
	movq	%rcx, (%rax)
	movabsq	$17179869187, %rcx      ## imm = 0x400000003
	movq	%rcx, 8(%rax)
	movq	%rax, (%rsp)
	movl	8(%rax), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%s\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%g\n"


.subsections_via_symbols
