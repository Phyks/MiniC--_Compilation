.text
	b function_main
function__A__A1:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	la $a0, string_1
	li $v0, 4
	syscall
end_function__A__A1:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	la $a0, string_2
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
	.asciiz "hello world\n"
string_2:
	.asciiz "no hello world\n"
