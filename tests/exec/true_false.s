.text
main:
	li $a0, 1
	sw $a0, -8($fp)
	la $a0, string_1
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	li $a0, 0
	sw $a0, -8($fp)
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
	.asciiz "b = "
string_2:
	.asciiz "\n"
string_3:
	.asciiz "b = "
string_4:
	.asciiz "\n"
