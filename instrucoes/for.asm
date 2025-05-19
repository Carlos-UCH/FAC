.text
#int sum = 0
#int i; 

#for(i = 0; i != 10; i++){
#	sum+=i;
# }

main:
	addi s1, zero, 0
	add s0, zero, zero 
	addi t0, zero, 10

for:
	beq s0, t0, done
	add s1, s1, s0
	addi s0, s0, 1
	j for 

done: 
	
	li a7, 1
	mv a0, s1
	ecall 
		