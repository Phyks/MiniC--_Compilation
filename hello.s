.text
	b function_main
function_fonction:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 3
	sw $a0, -4($fp)
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 31415
	move $v0, $a0
	b end_function_fonction
end_function_fonction:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_fonction_args:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	lw $a0, 4($fp)
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, 8($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	li $a0, 0
	sw $a0, -12($fp)
	la $a0, string_4
	li $v0, 4
	syscall
	b test_while_1
body_while_1:
	lw $a0, -12($fp)
	add $a1, $a0, 1
	sw $a1, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_5
	li $v0, 4
	syscall
test_while_1:
	lw $a0, -12($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_1
	la $a0, string_6
	li $v0, 4
	syscall
end_function_fonction_args:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -36
	sw $fp, 32($sp)
	add $fp, $sp, 32
	sw $ra, 28($sp)
	li $a0, 3
	sw $a0, -8($fp)
	li $a0, 0
	sw $a0, -12($fp)
	lw $a0, -12($fp)
	add $a1, $a0, 1
	sw $a1, -12($fp)
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
	li $a0, 3
	sw $a0, var_test
	li $a0, 4
	sw $a0, var_bidule
	lw $a0, var_bidule
	add $a1, $a0, 1
	sw $a1, var_bidule
	lw $a0, var_bidule
	add $a1, $a0, 1
	sw $a1, var_bidule
	lw $a0, var_test
	li $v0, 1
	syscall
	la $a0, string_8
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_9
	li $v0, 4
	syscall
	la $a0, string_10
	li $v0, 4
	syscall
	lw $a0, var_bidule
	li $v0, 1
	syscall
	la $a0, string_11
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -8($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_12
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
	sw $a0, -12($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_13
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_14
	li $v0, 4
	syscall
	li $a0, 41
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	div $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	rem $a0, $t1, $a0
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 42
	lw $t1, 0($sp)
	add $sp, $sp, 4
	mul $a0, $t1, $a0
	li $v0, 1
	syscall
	li $a0, 43
	li $v0, 1
	syscall
	la $a0, string_15
	li $v0, 4
	syscall
	la $a0, string_16
	li $v0, 4
	syscall
	la $a0, string_17
	li $v0, 4
	syscall
	la $a0, string_18
	li $v0, 4
	syscall
	la $a0, string_19
	li $v0, 4
	syscall
	lw $a0, var_test
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	beqz $a0, else_1
	la $a0, string_20
	li $v0, 4
	syscall
	la $a0, string_21
	li $v0, 4
	syscall
	b end_if_1
else_1:
	la $a0, string_22
	li $v0, 4
	syscall
end_if_1:
	li $a0, 0
	sw $a0, -16($fp)
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	li $v0, 1
	syscall
	la $a0, string_23
	li $v0, 4
	syscall
	b test_while_2
body_while_2:
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_24
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	add $a1, $a0, 1
	sw $a1, -16($fp)
test_while_2:
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_2
	li $a0, 0
	sw $a0, -20($fp)
	li $a0, 0
	sw $a0, -20($fp)
	b test_for_1
body_for_1:
	lw $a0, -20($fp)
	li $v0, 1
	syscall
	la $a0, string_25
	li $v0, 4
	syscall
	lw $a0, -20($fp)
	add $a1, $a0, 1
	sw $a1, -20($fp)
test_for_1:
	lw $a0, -20($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_1
	jal function_fonction
	add $sp, $sp, 0
	sw $a0, -24($fp)
	lw $a0, -24($fp)
	li $v0, 1
	syscall
	la $a0, string_26
	li $v0, 4
	syscall
	li $a0, 0
	sw $a0, -28($fp)
	la $a0, object_a
	lw $a0, 0($a0)
	li $v0, 1
	syscall
	la $a0, string_27
	li $v0, 4
	syscall
	la $a0, object_a
	lw $a0, 4($a0)
	li $v0, 1
	syscall
	la $a0, string_28
	li $v0, 4
	syscall
	li $a0, 3
	la $t0, object_a
	sw $a0, 0($t0)
	li $a0, 5
	la $t0, object_a
	sw $a0, 4($t0)
	la $a0, object_a
	lw $a0, 0($a0)
	li $v0, 1
	syscall
	la $a0, string_29
	li $v0, 4
	syscall
	la $a0, object_a
	lw $a0, 4($a0)
	li $v0, 1
	syscall
	la $a0, string_30
	li $v0, 4
	syscall
	li $a0, 43
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 42
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function_fonction_args
	add $sp, $sp, 8
	li $a0, 0
	sw $a0, -16($fp)
	b test_while_3
body_while_3:
	lw $a0, -16($fp)
	add $a0, $a0, 1
	sw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_31
	li $v0, 4
	syscall
test_while_3:
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_3
	li $a0, 2
	move $v0, $a0
	b end_function_main
end_function_main:
	lw $ra, 28($sp)
	lw $fp, 32($sp)
	add $sp, $sp, 36
	li $v0, 17
	syscall
.data
var_test:
	.word 0
var_bidule:
	.word 0
var_truc:
	.word 0
var_chose:
	.word 0
string_1:
	.asciiz "ok\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "\n"
string_4:
	.asciiz "\n"
string_5:
	.asciiz "\n"
string_6:
	.asciiz "\n"
object_a:
	.word 0
	.word 0
string_7:
	.asciiz "\n"
string_8:
	.asciiz "\n"
string_9:
	.asciiz "\n"
string_10:
	.asciiz "bidule"
string_11:
	.asciiz "\n"
string_12:
	.asciiz "\n"
string_13:
	.asciiz "\n"
string_14:
	.asciiz "\n"
string_15:
	.asciiz "\n"
string_16:
	.asciiz "test"
string_17:
	.asciiz "print "
string_18:
	.asciiz "plusieurs\n"
string_19:
	.asciiz "chaines\n"
string_20:
	.asciiz "if ok"
string_21:
	.asciiz "\n"
string_22:
	.asciiz "else ok \n"
string_23:
	.asciiz "\n"
string_24:
	.asciiz "\n"
string_25:
	.asciiz "\n"
string_26:
	.asciiz "\n"
string_27:
	.asciiz "\n"
string_28:
	.asciiz "\n"
string_29:
	.asciiz "\n"
string_30:
	.asciiz "\n"
string_31:
	.asciiz "\n"
