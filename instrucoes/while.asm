.text
main:
	#int pow = 1;
	#int x = 0; 
	#
	#while(pow != 128) { 
	#pow *= 2;
	#x += 1;
	
	addi s0, zero, 1
	add s1, zero, zero 
	addi t0, zero, 128
	
while:
	beq s0, t0, done #se s0 == t0 salta para done 
	slli s0, s0, 1 	#s0 = s0 << t1 (multiplica por 2)
	addi s1, s1, 1 #s1+=1
	j while 
	

done:

	li a7, 1
	mv a0, s1
	ecall 
	
	
	