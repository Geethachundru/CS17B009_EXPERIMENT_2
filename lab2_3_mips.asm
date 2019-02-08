	.file	1 "lab2_3.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,16,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x40070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	sw	$16,0($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	li	$16,1			# 0x1
	b	$L2
	nop

$L7:
	move	$18,$0
	li	$17,2			# 0x2
	b	$L3
	nop

$L6:
	teq	$17,$0,7
	div	$0,$16,$17
	mfhi	$2
	bne	$2,$0,$L4
	nop

	addiu	$18,$18,1
	b	$L5
	nop

$L4:
	addiu	$17,$17,1
$L3:
	srl	$2,$16,31
	addu	$2,$2,$16
	sra	$2,$2,1
	slt	$2,$2,$17
	beq	$2,$0,$L6
	nop

$L5:
	bne	$18,$0,$L2
	nop

	li	$2,1			# 0x1
	beq	$16,$2,$L2
	nop

	addiu	$16,$16,1
$L2:
	slt	$2,$16,100
	bne	$2,$0,$L7
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$fp,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
