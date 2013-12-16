.text
main:
	li $a0, 3
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
	sw $a0, -12($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	li $a0, 41
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	rem $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 42
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	li $v0, 1
	syscall
	li $a0, 43
	li $v0, 1
	syscall
	la $a0, string_5
	li $v0, 4
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
	la $a0, string_8
	li $v0, 4
	syscall
	la $a0, string_9
	li $v0, 4
	syscall
	li $a0, 0
	move $v0, $a0
	li $v0, 10
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
string_5:
	.asciiz "\n"
string_6:
	.asciiz "test"
string_7:
	.asciiz "print "
string_8:
	.asciiz "plusieurs\n"
string_9:
	.asciiz "chaines"
