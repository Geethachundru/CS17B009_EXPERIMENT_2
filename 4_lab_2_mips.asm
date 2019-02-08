#	.file	1 "4_lab_2.c"
#	.section .mdebug.abi32
#	.previous
#	.nan	legacy
#	.module	fp=xx
#	.module	nooddspreg
#	.abicalls
#	.text
#	.align	2
#	.globl	prime
#	.set	nomips16
#	.set	nomicromips
#	.ent	prime
#	.type	prime, @function
prime:
#	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
#	.mask	0x40000000,-4
#	.fmask	0x00000000,0
#	.set	noreorder
#	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	li	$2,2			# 0x2
	sw	$2,12($fp)
	li	$2,2			# 0x2
	sw	$2,4($fp)
	sw	$0,8($fp)
	li	$2,2			# 0x2
	sw	$2,4($fp)
	.option	pic0
	b	$L2
	nop

#	.option	pic2
$L4:
	lw	$3,24($fp)
	lw	$2,4($fp)
#	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L3
	nop

	li	$2,1			# 0x1
	sw	$2,8($fp)
$L3:
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,24($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L4
	nop

	lw	$3,8($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L5
	nop

	sw	$0,8($fp)
	move	$2,$0
	.option	pic0
	b	$L6
	nop

#	.option	pic2
$L5:
	li	$2,1			# 0x1
$L6:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

#	.set	macro
#	.set	reorder
#	.end	prime
#	.size	prime, .-prime
#	.align	2
#	.globl	main
#	.set	nomips16
#	.set	nomicromips
#	.ent	main
#	.type	main, @function
main:
#	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
#	.mask	0xc0000000,-4
#	.fmask	0x00000000,0
#	.set	noreorder
#	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	li	$2,12			# 0xc
	sw	$2,32($fp)
	li	$2,12			# 0xc
	sw	$2,24($fp)
	li	$2,12			# 0xc
	sw	$2,36($fp)
	sw	$0,28($fp)
	lw	$2,32($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L8
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
#	.option	pic0
	b	$L9
	nop

#	.option	pic2
$L8:
	lw	$3,32($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$3,$2
	bgez	$2,$L10
	nop

	addiu	$2,$2,-1
	li	$3,-2			# 0xfffffffffffffffe
	or	$2,$2,$3
	addiu	$2,$2,1
$L10:
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L11
	nop

	li	$2,2			# 0x2
	sw	$2,28($fp)
	.option	pic0
	b	$L9
	nop

#	.option	pic2
$L11:
	lw	$4,32($fp)
#	.option	pic0
	jal	prime
	nop

#	.option	pic2
	beq	$2,$0,$L9
	nop

	li	$2,3			# 0x3
	sw	$2,28($fp)
$L9:
	lw	$2,28($fp)
	li	$3,2			# 0x2
	beq	$2,$3,$L16
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L14
	nop

	li	$3,1			# 0x1
	bne	$2,$3,$L12
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
#	.option	pic0
	b	$L12
	nop

#	.option	pic2
$L17:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L16:
	lw	$4,24($fp)
#	.option	pic0
	jal	prime
	nop

#	.option	pic2
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	bne	$2,$0,$L17
	nop

#	.option	pic0
	b	$L12
	nop

#	.option	pic2
$L14:
	lw	$2,36($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L18
	nop

	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
#	.option	pic0
	b	$L12
	nop

#	.option	pic2
$L18:
	lw	$2,36($fp)
	addiu	$2,$2,2
	sw	$2,36($fp)
$L12:
	move	$2,$0
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

#	.set	macro
#	.set	reorder
#	.end	main
#	.size	main, .-main
#	.ident	"GCC: (Ubuntu 7.2.0-6ubuntu1) 7.2.0"
