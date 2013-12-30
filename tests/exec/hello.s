.text
	b function_main
function_main:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	la $a0, string_1
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "hello world\n"
