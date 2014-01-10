.text
	b function_main
function_main:
	add $sp, $sp, -24
	sw $fp, 20($sp)
	add $fp, $sp, 20
	sw $ra, 16($sp)
	li $a0, 41
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	sw $a0, -8($fp)
	li $a0, 42
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
end_function_main:
	lw $ra, 16($sp)
	lw $fp, 20($sp)
	add $sp, $sp, 24
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "x = "
string_2:
	.asciiz "\n"
