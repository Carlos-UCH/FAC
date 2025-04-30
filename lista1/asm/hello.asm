.data 
	hello: .asciz "Ola mundo\n"

.text
	
	li a7, 4
	la a0, hello 
	ecall
	