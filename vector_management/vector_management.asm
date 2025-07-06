# vet[5] = vet[i + j] + a//16;

.data
i: .word 1
j: .word 3
a: .word 64
vet: .word 10, 20, 30, 40, 50, 60, 70, 80

.text
move $t2, $zero
move $t3, $zero

la $s0, vet
lw $s1, a
lw $t0, i
lw $t1, j

add $t2, $t0, $t1
lb $t3, vet($t2)

srl $s1, $s1, 4

add $t3, $t3, $s1
sb $t3, 20($s0)