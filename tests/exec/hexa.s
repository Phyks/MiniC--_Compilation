.text
	b function_main
function_main:
	add $sp, $sp, -20
	sw $fp, 16($sp)
	add $fp, $sp, 16
	sw $ra, 12($sp)
	li $a0, 256
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 255
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	li $a0, 255
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	li $a0, 2147483647
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	li $a0, 3735928559
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_5
	li $v0, 4
	syscall
	li $a0, 4294967295
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
	li $a0, 2147483648
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 12($sp)
	lw $fp, 16($sp)
	add $sp, $sp, 20
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
	.asciiz "\n"
string_7:
	.asciiz "\n"
