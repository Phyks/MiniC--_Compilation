.text
	b function_main
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	sne $a0, $a0, $zero
	beqz $a0, lazy_end1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sle $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
lazy_end1:
	sne $a0, $a0, $zero
	bnez $a0, lazy_end2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	or $a0, $t1, $a0
lazy_end2:
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sgt $a0, $t1, $a0
	sne $a0, $a0, $zero
	beqz $a0, lazy_end4
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sge $a0, $t1, $a0
	sne $a0, $a0, $zero
	bnez $a0, lazy_end3
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sne $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	or $a0, $t1, $a0
lazy_end3:
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	seq $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
lazy_end4:
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	li $a0, 2
	neg $a0, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	neg $a0, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	sne $a0, $a0, $zero
	beqz $a0, lazy_end5
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
lazy_end5:
	sne $a0, $a0, $zero
	beqz $a0, lazy_end6
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
lazy_end6:
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "\n"
