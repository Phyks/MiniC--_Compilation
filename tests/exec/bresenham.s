.text
	b function_main
function__plot1:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	add $sp, $sp, 0
	b test_while_1
body_while_1:
	la $a0, string_1
	li $v0, 4
	syscall
test_while_1:
	lw $a0, 4($fp)
	sub $a1, $a0, 1
	sw $a1, 4($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sgt $a0, $t1, $a0
	bnez $a0, body_while_1
	add $sp, $sp, 0
	la $a0, string_2
	li $v0, 4
	syscall
end_function__plot1:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function__bresenham2:
	add $sp, $sp, -24
	sw $fp, 20($sp)
	add $fp, $sp, 20
	sw $ra, 16($sp)
	li $a0, 0
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sw $a0, -16($fp)
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -8($fp)
	b test_for_1
body_for_1:
	add $sp, $sp, 0
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__plot1
	add $sp, $sp, 4
	move $a0, $v0
	add $sp, $sp, 0
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	beqz $a0, else_1
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -16($fp)
	b end_if_1
else_1:
	add $sp, $sp, 0
	lw $a0, -12($fp)
	add $a1, $a0, 1
	sw $a1, -12($fp)
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -16($fp)
	add $sp, $sp, 0
end_if_1:
	add $sp, $sp, 0
	add $sp, $sp, 0
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
test_for_1:
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	lw $a0, 4($fp)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sle $a0, $t1, $a0
	bnez $a0, body_for_1
	add $sp, $sp, 0
end_function__bresenham2:
	lw $ra, 16($sp)
	lw $fp, 20($sp)
	add $sp, $sp, 24
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 6
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 10
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__bresenham2
	add $sp, $sp, 8
	move $a0, $v0
end_function_main:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	li $v0, 10
	syscall
.data
string_1:
	.asciiz " "
string_2:
	.asciiz "X\n"
