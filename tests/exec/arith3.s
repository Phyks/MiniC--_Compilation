.text
main:
	li $a0, 7
	neg $a0, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 6
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 7
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 6
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	li $a0, 7
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 6
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -16($fp)
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 8
	lw $t1, 0($sp)
	add $sp, $sp, 4
	rem $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -12($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -16($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -20($fp)
	lw $a0, -20($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
.data
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "\n"
string_4:
	.asciiz "\n"
