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
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	la $a0, function__A__A1
	la $t0, -8($fp)
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	jalr $a0
end_function_main:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "hello world\n"
