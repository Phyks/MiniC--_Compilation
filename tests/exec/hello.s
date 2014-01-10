.text
	b function_main
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	la $a0, string_1
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
	.asciiz "hello world\n"
