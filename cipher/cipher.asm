.data
chave: .asciiz "REPUBLICAS" # String chave
preco: .asciiz "4567.01" # String preco
cifrada: .space 20 # Buffer para a string cifrada (espaço suficiente)

.text
move $t0, $zero # index p/ preco e cifrada
move $t1, $zero

.loop:
lb $s0, preco($t0) # valor preco
beq $s0, $zero, .end
beq $s0, '.' .ponto

subi $s0, $s0, '0' #preco em numero
lb $s1, chave($s0) # valor chave
sb $s1, cifrada($t0)

addi $t0, $t0, 1
j .loop

.ponto:
sb $s0, cifrada($t0)
addi $t0, $t0, 1
j .loop

.end:
sb $zero, cifrada($t0)

li $v0, 4
la $a0, cifrada
syscall




