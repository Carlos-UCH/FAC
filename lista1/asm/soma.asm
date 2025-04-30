.data

linha:.asciz  "\n"

.text


li a7, 5
ecall

mv t0, a0

li a7, 5
ecall

mv t1, a0

add t2, t1, t0

li a7, 1
mv a0, t2
ecall

li a7, 4
la a0, linha
ecall 
