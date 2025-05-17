.text
main:
	li t0, 19
	li t1, 5
	
	rem t2, t0, t1
	
	li a7, 1
	mv a0, t2
	ecall 
	
	li a7, 11
	li a0, 10 
	ecall
	
	li t0, 19 
	li t1, 5
	
	div t2, t0, t1
	
	li a7, 1
	mv a0, t2 
	ecall 
	
	#Encerrar
	li a7, 10 
	ecall 