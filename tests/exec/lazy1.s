.text
	b function_main
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 42
	sne $a0, $a0, $zero
	bnez $a0, lazy_end1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	or $a0, $t1, $a0
lazy_end1:
	li $v0, 1
	syscall
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 0
	sne $a0, $a0, $zero
	beqz $a0, lazy_end2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	and $a0, $t1, $a0
lazy_end2:
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	li $a0, 0
	sw $a0, -8($fp)
	add $sp, $sp, 0
	li $a0, 1
	sne $a0, $a0, $zero
	bnez $a0, lazy_end3
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, -8($fp)
	lw $a0, 0($a0)
	sne $a0, $a0, $zero
	lw $t1, 0($sp)
	add $sp, $sp, 4
	or $a0, $t1, $a0
lazy_end3:
	beqz $a0, else_1
	la $a0, string_3
	li $v0, 4
	syscall
	b end_if_1
else_1:
end_if_1:
	add $sp, $sp, 0
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
string_3:
	.asciiz "ok\n"
