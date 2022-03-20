/*
Pedro Correa Rigotto - Matricula 762281
guia0403ab
*/

module sop3 (output sA, output sB, input x, y, z);
	assign sA = (~x&y&~z)|(x&~y&~z)|(x&y&~z)|(x&y&z);
	assign sB = (~x&~y&z)|(~x&y&z)|(x&~y&~z)|(x&y&z);
endmodule // sop3

module letrasAB;
	reg x, y, z;
	wire sA1, sB1;
	sop3 exercicio(sA1, sB1, x, y, z);
	
	initial begin
		$display("x  y  z  SoP(2,4,6,7)  SoP(1,3,4,7)");
		x = 0; y = 0; z = 0;
		$monitor("%b  %b  %b  %b             %b", x, y, z, sA1, sB1);
		#1 x = 0; y = 0; z = 1;
		#1 x = 0; y = 1; z = 0;
		#1 x = 0; y = 1; z = 1;
		#1 x = 1; y = 0; z = 0;
		#1 x = 1; y = 0; z = 1;
		#1 x = 1; y = 1; z = 0;
		#1 x = 1; y = 1; z = 1;
	end
endmodule // letrasAB
