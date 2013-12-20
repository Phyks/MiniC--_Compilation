.text
main:
	li $a0, 0
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -8($fp)
	b test_for_0
body_for_0:
	la $a0, string_1
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
test_for_0:
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 10
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_0
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
.data
string_1:
	.asciiz "i = "
string_2:
	.asciiz "\n"
string_3:
	.asciiz "i = "
string_4:
	.asciiz "\n"
