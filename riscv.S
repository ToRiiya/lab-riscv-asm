.data
N: .word 3
M: .word 2
matrix:
.word -1 2 -3
.word 1 -20 3
sum: .word 0

.text

main:
la a2,N
la a3,M
la a4,matrix
la a5,sum
call process
call print
call exit

print:
lw a1 0(a5)
addi a0,x0,1
ecall

exit:
addi a0,x0,10
ecall

process:
lw t1 0(a2) #N
lw t2 0(a3) #M
addi t5,x0,0 #sum

addi t3,x0,0
addi t6,x0,0
loop0:
bge t3,t2,exit0
addi t3,t3,1
add t6,t6,t1
j loop0
exit0:

addi t3,x0,0
loop1:
bge t3,t6,exit1
addi t3,t3,1
lw t4 0(a4)
addi a4, a4, 4
bge t4,x0,condition
add t5,t5,t4
condition:
j loop1
exit1:

sw t5 0(a5)
ret
