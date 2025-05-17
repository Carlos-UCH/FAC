.data
	valor: 100 

.text 
main:
	la t0, valor
	lw t1, 0(t0)
	
	
	li a7, 1
	mv a0, t1
	ecall 
	
	li a7, 10 
	ecall 
	
			

