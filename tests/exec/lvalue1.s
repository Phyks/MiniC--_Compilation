.text
	b function_main
function_main:
	add $sp, $sp, -24
	sw $fp, 20($sp)
	add $fp, $sp, 20
	sw $ra, 16($sp)
	li $a0, 0
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	li $a0, 0
	sw $a0, -16($fp)
	li $a0, 1
	sw $a0, -16($fp)
	sw $a0, -12($fp)
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 16($sp)
	lw $fp, 20($sp)
	add $sp, $sp, 24
	li $v0, 10
	syscall
.data
string_1:
	.asciiz " "
string_2:
	.asciiz " "
string_3:
	.asciiz "\n"
