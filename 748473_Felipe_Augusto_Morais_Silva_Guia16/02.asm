	   LXI H,2050
	   MOV B,M      //B<- M
	   MVI C,00	    //C<- 00H
	   INX H
	   MOV A,M	    //A<- M
	   CMP B
	   JC 2011	    //CHECK FOR CARRY
	   SUB B	    //A <- A - B
	   INR C	    //C <- C + 1
	   JMP 2008
	   STA 3050   //3050 <- A
	   MOV A,C	   //A <- C
	   STA 3051  //3051 <- A
	   HLT	// ENCERRA

