# BEGIN 0000H
	   LXI H,0050 	;HL <- addr(valor1)	 //armazena o primeiro valor
	   MOV A,M		;A <- MEM[HL]		//endereco do valor1
	   INX H
	   LXI H, 0100 	;HL <- addr(valor2)	//armazena o segundo valor
	   MOV B,M		;B <- MEM[HL]		//endereco do valor2
	   INX H
	   LXI H, 0150 	;HL <- addr(valor3) //armazena o terceiro valor
	   MOV C,M		;C <- MEM[HL]		//endereco do valor3
	   ADD M
	   INX H
	   MOV M,A
	   HLT
# ORG C050
# DB 95H,65H
