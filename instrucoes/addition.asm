.text
main:
	li a7, 5
	ecall 
	
	mv t0, a0
	
	li a7, 5
	ecall	
	
	mv t1, a0
	
	add t2, t0, t1
	
	li a7,1
	mv a0, t2
	ecall 
	
	
	#Finaliza o programa
	li a7, 10
	ecall 
	
	
	