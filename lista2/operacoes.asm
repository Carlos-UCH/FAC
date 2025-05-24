.data 
	opadd: .string "ADD: "
	opsub: .string "SUB: "
	opand: .string "AND: "
	opor: .string "OR: "
	opxor: .string "XOR: "
	opmask: .string "MASK: "
	opsll: .string "SLL(4): "
	opsrl: .string "SRL(4): "
	
	newline: .string "\n"


.text

main:
	li a7, 5
	ecall 
	
	mv s0, a0 
	
	li a7, 5 
	ecall 
	
	mv s1, a0 
	
	li a7, 5 
	ecall
	
	mv s2, a0
	
	#Soma
	
	la a0, opadd
	li a7, 4
	ecall
	
	add t1, s0, s1
	mv a0, t1
	
	li a7, 1
	ecall   
	
	la a0, newline 
	li a7, 4
	ecall 
	
	
	#Subtração
	
	la a0, opsub
	li a7, 4
	ecall 
	
	sub t1, s0, s1
	mv a0, t1
	
	li a7, 1
	ecall 
	
	la a0, newline 
	li a7, 4
	ecall 
	
	#AND
	
	la a0, opand
	li a7, 4
	ecall
	
	and t1, s0, s1 
	mv a0, t1 
	
	li a7, 1
	ecall 
	
	la a0, newline 
	li a7, 4
	ecall 
	
	#OR
	
	la a0, opor
	li a7, 4
	ecall
	
	or t1, s0, s1 
	mv a0, t1 
	
	li a7, 1
	ecall 	
	
	la a0, newline 
	li a7, 4
	ecall 
	
	#XOR
	
	la a0, opxor
	li a7, 4
	ecall
	
	xor t1, s0, s1 
	mv a0, t1 
	
	li a7, 1
	ecall 
	
	la a0, newline 
	li a7, 4
	ecall 
	
	#MASK
	
	la a0, opmask
	li a7, 4
	ecall
	
	andi s3, s2, 31 
	mv a0, s3 
	
	li a7, 1
	ecall 
	
	la a0, newline 
	li a7, 4
	ecall 
	
	#SLL
	
	la a0, opsll
	li a7, 4
	ecall
	
	sll t1, s0,s3  
	mv a0, t1 
	
	li a7, 1
	ecall 
	
	la a0, newline 
	li a7, 4
	ecall 
	
	#SRL
	
	la a0, opsrl
	li a7, 4
	ecall
	
	srl t1, s1, s3 
	mv a0, t1 
	
	li a7, 1
	ecall 
	
	la a0, newline 
	li a7, 4
	ecall 
	
	
	
	#Encerrar
	li a7, 10 
	ecall

	
	 