.data 



.text
main: 
	li a7, 5 #n
	ecall 
	
	mv s0, a0 
	
	beqz s0, done #if n == 0
	addi  s1, zero, 0 #count 
	
	li t1, 1         #mask = 1 << 31	
	li t2, 31 
	sll s2,t1,t2 
	 
	and s3, s0, s2   #(n & mask)
	
	while: 
	bnez s3, end
	addi s1, s1, 1
	srli s2, s2, 1
	and s3, s0, s2 
		
	j while 
done:
	li t0, 32
	mv a0, t0 
	
	li a7, 1
	ecall
	
	#encerrar
	li a7, 10
	ecall 
end:
	li a7, 1
	mv a0, s1
	ecall 
	
	#encerrar
	li a7, 10
	ecall
	
	
	