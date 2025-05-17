.data 
	valor: 16 #(4 inteiros -> 4 * 4(bytes))
	string: .asciiz "\n"

.text 
main:
	la t0, valor #Endereço base 
	
	li, t1, 10
	sw t1, 0(t0)
	
	li, t1, 20 
	sw t1, 4(t0)
	
	li t1, 30
	sw t1, 8(t0)
	
	li t1, 40
	sw t1, 12(t0)
	
	#vetor[2] = 30
	
	lw t2, 8(t0)
	
	li a7, 1
	mv a0, t2
	ecall 
	
	#Quebra a linha	
	li a7, 11 # char
	li a0, 10 # "\n" em ascii 
	ecall
	
	#Encerrar
	li a7, 10
	ecall 
	
	
	
	
	
	
	
	
	
	
	