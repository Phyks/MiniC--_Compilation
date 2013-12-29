.text
	b function_main
function_plot:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
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
	la $a0, string_2
	li $v0, 4
	syscall
end_function_plot:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	move $v0, $a0
	jr $ra
function_bresenham:
	add $sp, $sp, -20
	sw $fp, 16($sp)
	add $fp, $sp, 16
	sw $ra, 12($sp)
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
	li $a0, 0
	sw $a0, -8($fp)
	b test_for_1
body_for_1:
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_plot
	add $sp, $sp, 4
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
end_if_1:
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
end_function_bresenham:
	lw $ra, 12($sp)
	lw $fp, 16($sp)
	add $sp, $sp, 20
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 6
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 10
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_bresenham
	add $sp, $sp, 8
end_function_main:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	li $v0, 17
	syscall
.data
string_1:
	.asciiz " "
string_2:
	.asciiz "X\n"
