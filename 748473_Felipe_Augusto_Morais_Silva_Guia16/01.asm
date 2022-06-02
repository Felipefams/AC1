	   LXI H,8000	// Load first operand address
	   MOV B,M	// Store first operand to B
	   INX H	// Increase HL pair
	   XRA A	// Clear accumulator
	   MOV C,A	// Store 00H at register C
		// LOOP
		// When Carry flag is 0, skip next task
	
	   LXI H,8050
		// Jump to loop when Z flag is not 1
	   HLT

