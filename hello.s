.text
	b function_main
function__fonction1:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
	li $a0, 3
	sw $a0, -8($fp)
	la $a0, string_1
	li $v0, 4
	syscall
end_function__fonction1:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	move $v0, $a0
	jr $ra
function__fonction_args2:
	add $sp, $sp, -16
	sw $fp, 12($sp)
	add $fp, $sp, 12
	sw $ra, 8($sp)
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
	sw $a0, -8($fp)
	la $a0, string_4
	li $v0, 4
	syscall
	add $sp, $sp, 0
	b test_while_1
body_while_1:
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_5
	li $v0, 4
	syscall
test_while_1:
	lw $a0, -8($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_1
	add $sp, $sp, 0
	la $a0, string_6
	li $v0, 4
	syscall
end_function__fonction_args2:
	lw $ra, 8($sp)
	lw $fp, 12($sp)
	add $sp, $sp, 16
	move $v0, $a0
	jr $ra
function__surcharge3:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	li $a0, 42
	li $v0, 1
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
end_function__surcharge3:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function__surcharge4:
	add $sp, $sp, -12
	sw $fp, 8($sp)
	add $fp, $sp, 8
	sw $ra, 4($sp)
	lw $a0, 4($fp)
	li $v0, 1
	syscall
	la $a0, string_8
	li $v0, 4
	syscall
end_function__surcharge4:
	lw $ra, 4($sp)
	lw $fp, 8($sp)
	add $sp, $sp, 12
	move $v0, $a0
	jr $ra
function_main:
	add $sp, $sp, -44
	sw $fp, 40($sp)
	add $fp, $sp, 40
	sw $ra, 36($sp)
	li $a0, 3
	la $t0, -8($fp)
	sw $a0, 0($t0)
	li $a0, 5
	la $t0, -8($fp)
	sw $a0, 4($t0)
	la $a0, -8($fp)
	lw $a0, 0($a0)
	li $v0, 1
	syscall
	la $a0, string_9
	li $v0, 4
	syscall
	la $a0, -8($fp)
	lw $a0, 4($a0)
	li $v0, 1
	syscall
	la $a0, string_10
	li $v0, 4
	syscall
	li $a0, 5
	la $t0, var_b
	sw $a0, 0($t0)
	la $a0, var_b
	lw $a0, 0($a0)
	li $v0, 1
	syscall
	la $a0, string_11
	li $v0, 4
	syscall
	li $a0, 3
	sw $a0, -16($fp)
	li $a0, 0
	sw $a0, -20($fp)
	li $a0, 18
	sw $a0, var_chose
	lw $a0, var_chose
	li $v0, 1
	syscall
	la $a0, string_12
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_13
	li $v0, 4
	syscall
	lw $a0, -20($fp)
	li $v0, 1
	syscall
	la $a0, string_14
	li $v0, 4
	syscall
	li $a0, 42
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 42
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__fonction_args2
	add $sp, $sp, 8
	move $a0, $v0
	li $a0, 43
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__surcharge4
	add $sp, $sp, 4
	move $a0, $v0
	lw $a0, -20($fp)
	add $a1, $a0, 1
	sw $a1, -20($fp)
	lw $a0, -20($fp)
	li $v0, 1
	syscall
	la $a0, string_15
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
	la $a0, string_16
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_17
	li $v0, 4
	syscall
	la $a0, string_18
	li $v0, 4
	syscall
	lw $a0, var_bidule
	li $v0, 1
	syscall
	la $a0, string_19
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $a0, $t1, $a0
	sw $a0, -16($fp)
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_20
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	add $a1, $a0, 1
	sw $a1, -16($fp)
	sw $a0, -20($fp)
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_21
	li $v0, 4
	syscall
	lw $a0, -20($fp)
	li $v0, 1
	syscall
	la $a0, string_22
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
	la $a0, string_23
	li $v0, 4
	syscall
	la $a0, string_24
	li $v0, 4
	syscall
	la $a0, string_25
	li $v0, 4
	syscall
	la $a0, string_26
	li $v0, 4
	syscall
	la $a0, string_27
	li $v0, 4
	syscall
	add $sp, $sp, 0
	lw $a0, var_test
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	beqz $a0, else_1
	add $sp, $sp, 0
	la $a0, string_28
	li $v0, 4
	syscall
	la $a0, string_29
	li $v0, 4
	syscall
	add $sp, $sp, 0
	b end_if_1
else_1:
	add $sp, $sp, 0
	la $a0, string_30
	li $v0, 4
	syscall
	add $sp, $sp, 0
end_if_1:
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -24($fp)
	lw $a0, -24($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	li $v0, 1
	syscall
	la $a0, string_31
	li $v0, 4
	syscall
	add $sp, $sp, 0
	b test_while_2
body_while_2:
	add $sp, $sp, 0
	lw $a0, -24($fp)
	li $v0, 1
	syscall
	la $a0, string_32
	li $v0, 4
	syscall
	lw $a0, -24($fp)
	add $a1, $a0, 1
	sw $a1, -24($fp)
	add $sp, $sp, 0
test_while_2:
	lw $a0, -24($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_2
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -28($fp)
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -28($fp)
	b test_for_1
body_for_1:
	add $sp, $sp, 0
	lw $a0, -28($fp)
	li $v0, 1
	syscall
	la $a0, string_33
	li $v0, 4
	syscall
	add $sp, $sp, 0
	lw $a0, -28($fp)
	add $a1, $a0, 1
	sw $a1, -28($fp)
test_for_1:
	lw $a0, -28($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_1
	add $sp, $sp, 0
	jal function__fonction1
	add $sp, $sp, 0
	move $a0, $v0
	sw $a0, -32($fp)
	lw $a0, -32($fp)
	li $v0, 1
	syscall
	la $a0, string_34
	li $v0, 4
	syscall
	li $a0, 0
	sw $a0, -36($fp)
	li $a0, 43
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 42
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__fonction_args2
	add $sp, $sp, 8
	move $a0, $v0
	li $a0, 0
	sw $a0, -24($fp)
	add $sp, $sp, 0
	b test_while_3
body_while_3:
	add $sp, $sp, 0
	lw $a0, -24($fp)
	add $a0, $a0, 1
	sw $a0, -24($fp)
	li $v0, 1
	syscall
	la $a0, string_35
	li $v0, 4
	syscall
	add $sp, $sp, 0
test_while_3:
	lw $a0, -24($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_3
	add $sp, $sp, 0
	la $a0, string_36
	li $v0, 4
	syscall
	la $a0, string_37
	li $v0, 4
	syscall
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -24($fp)
	b test_for_2
body_for_2:
	add $sp, $sp, -4
	li $a0, 0
	sw $a0, -40($fp)
	add $sp, $sp, 0
	li $a0, 0
	sw $a0, -40($fp)
	b test_for_3
body_for_3:
	add $sp, $sp, 0
	lw $a0, -24($fp)
	li $v0, 1
	syscall
	la $a0, string_38
	li $v0, 4
	syscall
	lw $a0, -40($fp)
	li $v0, 1
	syscall
	la $a0, string_39
	li $v0, 4
	syscall
	add $sp, $sp, 0
	lw $a0, -40($fp)
	add $a1, $a0, 1
	sw $a1, -40($fp)
test_for_3:
	lw $a0, -40($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_3
	add $sp, $sp, 0
	add $sp, $sp, 4
	lw $a0, -24($fp)
	add $a1, $a0, 1
	sw $a1, -24($fp)
test_for_2:
	lw $a0, -24($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 5
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_for_2
	add $sp, $sp, 0
	jal function__surcharge3
	add $sp, $sp, 0
	move $a0, $v0
	li $a0, 43
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	jal function__surcharge4
	add $sp, $sp, 4
	move $a0, $v0
	li $a0, 2
	move $v0, $a0
	li $v0, 17
	syscall
end_function_main:
	lw $ra, 36($sp)
	lw $fp, 40($sp)
	add $sp, $sp, 44
	li $v0, 10
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
string_7:
	.asciiz "\n"
string_8:
	.asciiz "\n"
var_b:
	.word 0
string_9:
	.asciiz "\n"
string_10:
	.asciiz "\n"
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
	.asciiz "\n"
string_17:
	.asciiz "\n"
string_18:
	.asciiz "bidule"
string_19:
	.asciiz "\n"
string_20:
	.asciiz "\n"
string_21:
	.asciiz "\n"
string_22:
	.asciiz "\n"
string_23:
	.asciiz "\n"
string_24:
	.asciiz "test"
string_25:
	.asciiz "print "
string_26:
	.asciiz "plusieurs\n"
string_27:
	.asciiz "chaines\n"
string_28:
	.asciiz "if ok"
string_29:
	.asciiz "\n"
string_30:
	.asciiz "else ok \n"
string_31:
	.asciiz "\n"
string_32:
	.asciiz "\n"
string_33:
	.asciiz "\n"
string_34:
	.asciiz "\n"
string_35:
	.asciiz "\n"
string_36:
	.asciiz "test for imbriques"
string_37:
	.asciiz "\n"
string_38:
	.asciiz ", "
string_39:
	.asciiz "\n"
