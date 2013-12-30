.text
	b function_main
function_main:
	add $sp, $sp, -8
	sw $fp, 4($sp)
	add $fp, $sp, 4
	sw $ra, 0($sp)
	la $a0, string_1
	li $v0, 4
	syscall
	la $a0, string_2
	li $v0, 4
	syscall
	la $a0, string_3
	li $v0, 4
	syscall
	la $a0, string_4
	li $v0, 4
	syscall
	la $a0, string_5
	li $v0, 4
	syscall
	la $a0, string_6
	li $v0, 4
	syscall
end_function_main:
	lw $ra, 0($sp)
	lw $fp, 4($sp)
	add $sp, $sp, 8
	li $v0, 10
	syscall
.data
string_1:
	.asciiz "abc\n"
string_2:
	.asciiz "a\nc\n"
string_3:
	.asciiz "a\\c\n"
string_4:
	.asciiz "a\tc\n"
string_5:
	.asciiz "a\"c\n"
string_6:
	.asciiz "ABC\n"
