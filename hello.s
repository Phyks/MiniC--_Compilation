.text
	b main
main:
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
	la $a0, string_1
	li $v0, 4
	syscall
	li $a0, 3
	sw $a0, test
	li $a0, 4
	sw $a0, bidule
	lw $a0, bidule
	add $a1, $a0, 1
	sw $a1, bidule
	lw $a0, bidule
	add $a1, $a0, 1
	sw $a1, bidule
	lw $a0, test
	li $v0, 1
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	lw $a0, bidule
	li $v0, 1
	syscall
	la $a0, string_5
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
	la $a0, string_6
	li $v0, 4
	syscall
	lw $a0, -8($fp)
	add $a1, $a0, 1
	sw $a1, -8($fp)
	sw $a0, -12($fp)
	lw $a0, -8($fp)
	li $v0, 1
	syscall
	la $a0, string_7
	li $v0, 4
	syscall
	lw $a0, -12($fp)
	li $v0, 1
	syscall
	la $a0, string_8
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
	la $a0, string_9
	li $v0, 4
	syscall
	la $a0, string_10
	li $v0, 4
	syscall
	la $a0, string_11
	li $v0, 4
	syscall
	la $a0, string_12
	li $v0, 4
	syscall
	la $a0, string_13
	li $v0, 4
	syscall
	lw $a0, test
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	seq $a0, $t1, $a0
	beqz $a0, else_1
	la $a0, string_14
	li $v0, 4
	syscall
	la $a0, string_15
	li $v0, 4
	syscall
	b end_if_1
else_1:
	la $a0, string_16
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
	la $a0, string_17
	li $v0, 4
	syscall
	b test_while_1
body_while_1:
	lw $a0, -16($fp)
	li $v0, 1
	syscall
	la $a0, string_18
	li $v0, 4
	syscall
	lw $a0, -16($fp)
	add $a1, $a0, 1
	sw $a1, -16($fp)
test_while_1:
	lw $a0, -16($fp)
	sub $sp, $sp, 4
	sw $a0, 0($sp)
	li $a0, 3
	lw $t1, 0($sp)
	add $sp, $sp, 4
	slt $a0, $t1, $a0
	bnez $a0, body_while_1
	li $a0, 0
	sw $a0, -20($fp)
	li $a0, 0
	sw $a0, -20($fp)
	b test_for_1
body_for_1:
	lw $a0, -20($fp)
	li $v0, 1
	syscall
	la $a0, string_19
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
	li $a0, 0
	move $v0, $a0
	li $v0, 10
	syscall
.data
test:
	.word 0
bidule:
	.word 0
truc:
	.word 0
chose:
	.word 0
string_1:
	.asciiz "\n"
string_2:
	.asciiz "\n"
string_3:
	.asciiz "\n"
string_4:
	.asciiz "bidule"
string_5:
	.asciiz "\n"
string_6:
	.asciiz "\n"
string_7:
	.asciiz "\n"
string_8:
	.asciiz "\n"
string_9:
	.asciiz "\n"
string_10:
	.asciiz "test"
string_11:
	.asciiz "print "
string_12:
	.asciiz "plusieurs\n"
string_13:
	.asciiz "chaines\n"
string_14:
	.asciiz "if ok"
string_15:
	.asciiz "\n"
string_16:
	.asciiz "else ok \n"
string_17:
	.asciiz "\n"
string_18:
	.asciiz "\n"
string_19:
	.asciiz "\n"
