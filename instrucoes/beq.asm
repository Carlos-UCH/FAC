.text
main:
	li t0, 5
	li t1, 5
	
	beq t0, t1, diminuir #se igual vai pular  para o diminui 
	
	add t2, t0, t1
	
	li a7, 1
	mv a0, t2
	ecall
	
diminuir:
	
	sub t2, t0, t1
	
	li a7, 1
	mv a0, t2
	ecall 
