.data
	not_a_prime_number_msg: .asciiz "Não é um número primo."
	it_is_a_prime_number_msg: .asciiz "É um número primo."


.text 

li $v0, 5
syscall


move $s0, $v0     # s0 tem o numero p/ ver se é primo
li $s1, 1         # s1 é o count
li $t2, 2
div $s0, $t2
mfhi $t1          # remainder tá na t1
beqz $t1, NOT_A_PRIME_NUMBER 

.WHILE 
	bge $s0, $s1, IT_IS_A_PRIME_NUMBER
	
	
	j WHILE



.NOT_A_PRIME_NUMBER:
	la $a0, 0(not_a_prime_number_msg)
	li $v0, 4
	syscall

.IT_IS_A_PRIME_NUMBER
	la $a0, 0(it_is_a_prime_number_msg)
	li $v0, 4
	syscall




