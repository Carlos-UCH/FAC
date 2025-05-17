.text
main:
	li t0, 5
	li t1, 1 #deslocar 1 bit a esquerda 
	sll t2, t0, t1
	
	li a7, 1
	mv a0, t2
	ecall 
	
	#Nova linha
	li a7, 11
	li a0, 10
	ecall
	
	li t0, 5
	li t1, 2 
	srl t2, t0, t1 #deslocar 2 bits para a direita 
	
	li a7,1 
	mv a0, t2
	ecall 
	
	#Nova linha 
	li a7, 11
	li a0, 10 
	ecall 
	
	li t0, 5
	li t1, 2 #desloca 2 bits para direitra mantendo o sinal
	sra t2, t0, t1
	
	li a7,1 
	mv a0, t2
	ecall 
	
	
	
	
	
	
	
	
	
	
	