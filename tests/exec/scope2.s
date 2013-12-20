.text
main:
	li $a0, 42
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 1
	beqz $a0, else_1
	li $a0, 1
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	b end_if_1
else_1:
	li $a0, 2
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
end_if_1:
	lw $a0, -8($fp)
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
