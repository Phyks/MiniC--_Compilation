.text
	b function_main
function_main:
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
	li $a0, 1
	sne $a0, $a0, $zero
	bnez $a0, lazy_end3
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	add $a0, $a0, -8
	add $a0, $a0, $fp
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
.data
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "ok\n"
