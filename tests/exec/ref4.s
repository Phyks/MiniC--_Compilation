.text
	b function_main
function_f:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	lw $a1, 4($fp)
	lw $a0, 0($a1)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	lw $a1, 4($fp)
	sw $a0, 0($a1)
end_function_f:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -20
	sw $fp, 16($sp)
	add $fp, $sp, 16
	sw $ra, 12($sp)
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
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_f
	add $sp, $sp, 4
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
	sw $a0, -8($fp)
	la $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_f
	add $sp, $sp, 4
	la $a0, string_5
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_8
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
	.asciiz "z = "
string_8:
	.asciiz "\n"
