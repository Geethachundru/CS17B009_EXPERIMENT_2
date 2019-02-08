#	.file	1 "5_lab_2.c"
#	.section .mdebug.abi32
#	.previous
#	.nan	legacy
#	.module	fp=xx
#	.module	nooddspreg
#	.abicalls
#	.rdata
#	.align	2
$LC0:
#	.ascii	"%d\000"
#	.text
#	.align	2
#	.globl	main
#	.set	nomips16
#	.set	nomicromips
#	.ent	main
#	.type	main, @function
main:
#	.frame	$fp,1256,$31		# vars= 1224, regs= 2/0, args= 16, gp= 8
#	.mask	0xc0000000,-4
#	.fmask	0x00000000,0
#	.set	noreorder
#	.set	nomacro
	addiu	$sp,$sp,-1256
	sw	$31,1252($sp)
	sw	$fp,1248($sp)
	move	$fp,$sp
#	lui	$28,%hi(__gnu_local_gp)
#	addiu	$28,$28,%lo(__gnu_local_gp)
#	.cprestore	16
#	lw	$2,%got(__stack_chk_guard)($28)
#	lw	$2,0($2)
	sw	$2,1244($fp)
	sw	$0,28($fp)
#	.option	pic0
	b	$L2
	nop

#	.option	pic2
$L5:
	sw	$0,32($fp)
#	.option	pic0
	b	$L3
	nop

#	.option	pic2
$L4:
	addiu	$4,$fp,44
	lw	$3,28($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$4,$2
	move	$5,$2
#	lui	$2,%hi($LC0)
#	addiu	$4,$2,%lo($LC0)
#	lw	$2,%call16(__isoc99_scanf)($28)
#	move	$25,$2
#	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
#1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L3:
	lw	$3,32($fp)
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L4
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L2:
	lw	$3,28($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L5
	nop

	sw	$0,28($fp)
#	.option	pic0
	b	$L6
	nop

#	.option	pic2
$L9:
	sw	$0,32($fp)
#	.option	pic0
	b	$L7
	nop

#	.option	pic2
$L8:
	addiu	$4,$fp,444
	lw	$3,28($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$4,$2
	move	$5,$2
#	lui	$2,%hi($LC0)
#	addiu	$4,$2,%lo($LC0)
#	lw	$2,%call16(__isoc99_scanf)($28)
#	move	$25,$2
#	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
#1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L7:
	lw	$3,32($fp)
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L8
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L6:
	lw	$3,28($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L9
	nop

	sw	$0,28($fp)
#	.option	pic0
	b	$L10
	nop

#	.option	pic2
$L13:
	sw	$0,32($fp)
#	.option	pic0
	b	$L11
	nop

#	.option	pic2
$L12:
	lw	$3,28($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,1248
	addu	$2,$3,$2
	lw	$4,-1204($2)
	lw	$3,28($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,1248
	addu	$2,$3,$2
	lw	$2,-804($2)
	addu	$4,$4,$2
	lw	$3,28($fp)
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,1248
	addu	$2,$3,$2
	sw	$4,-404($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L11:
	lw	$3,32($fp)
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L12
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L10:
	lw	$3,28($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

	move	$2,$0
#	lw	$3,%got(__stack_chk_guard)($28)
#	lw	$4,1244($fp)
	lw	$3,0($3)
	beq	$4,$3,$L15
	nop

#	lw	$2,%call16(__stack_chk_fail)($28)
#	move	$25,$2
#	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
#1:	jalr	$25
	nop

$L15:
	move	$sp,$fp
	lw	$31,1252($sp)
	lw	$fp,1248($sp)
	addiu	$sp,$sp,1256
	jr	$31
	nop

#	.set	macro
#	.set	reorder
#	.end	main
#	.size	main, .-main
#	.ident	"GCC: (Ubuntu 7.2.0-6ubuntu1) 7.2.0"
