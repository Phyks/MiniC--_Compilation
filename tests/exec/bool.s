.text
	b function_main
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
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
end_function_main:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
