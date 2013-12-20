.text
main:
	li $a0, 1
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 0
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
.data
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
