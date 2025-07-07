.data 
	sup: .word 16
	digs: .word 04
	stringi: .string " \n"
.text
main:
	lw t1, digs 
	lw a1, sup  
	
	ori a0, t1, 0x01 
	add a0, a0, a1 
	
	jal func 
	
	add t2, zero, a0  
	
Fim:
	li a7, 1
	add a0, t2, zero 
	ecall 
	
	li a7, 4
	la a0, stringi 
	ecall 
	
	li a7, 10 
	ecall 
func: 
	add t3, zero, zero 
	add t1, zero, zero 
	
	li t0, 3 	
	
func_lopp:
	
	rem t2, a0, t0    
	beq t2, zero, func_exit 
	
	addi t0, t0, 2 
	slt t1, a1, t0     
	beq t1, zero, func_lopp 
	addi t3, zero, 1
	
func_exit: 
	add a0, t3, zero 
	jr ra   	 	


