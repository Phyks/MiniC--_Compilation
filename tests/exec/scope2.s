.text
	b function_main
function_main:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	li $a0, 42
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	add $sp, $sp, 0
	li $a0, 1
	beqz $a0, else_1
	add $sp, $sp, -4
	li $a0, 1
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	add $sp, $sp, 4
	b end_if_1
else_1:
	add $sp, $sp, -4
	li $a0, 2
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	add $sp, $sp, 4
end_if_1:
	add $sp, $sp, 0
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_4
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
	.asciiz "\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "\n"
string_4:
	.asciiz "\n"
