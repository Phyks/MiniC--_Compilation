.text
main:
	la $a0, string_1
	li $v0, 4
	syscall
.data
string_1:
	.asciiz "hello world\n"
