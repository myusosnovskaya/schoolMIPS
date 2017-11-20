
               .text
start:  li $t0, 0x7
		li $t1, 0x3
		li $t2, 0x1
		move $v0, $t0
		move $t4, $t0
		
M1:		beq $t1, $t2, finish
		addiu $t1, $t1, -0x1
		move $t0, $v0
		
		/* Multipliction */
		move $t3, $t4
M2:		beq  $t3, $t2, M3
		addiu $t3, $t3, -0x1
		addu $v0, $v0, $t0
		b M2
		
M3:		b M1		
finish: nop
