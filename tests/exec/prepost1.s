.text
	b function_main
function_main:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	li $a0, 41
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
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
	la $a0, string_3
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sub $a1, $a0, 1
	sw $a1, -8($fp)
	la $a0, string_5
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	add $a0, $a0, 1
	sw $a0, -8($fp)
	la $a0, string_7
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_8
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sub $a0, $a0, 1
	sw $a0, -8($fp)
	la $a0, string_9
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_10
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "x = "
string_2:
	.asciiz "\n"
string_3:
	.asciiz "x = "
string_4:
	.asciiz "\n"
string_5:
	.asciiz "x = "
string_6:
	.asciiz "\n"
string_7:
	.asciiz "x = "
string_8:
	.asciiz "\n"
string_9:
	.asciiz "x = "
string_10:
	.asciiz "\n"
