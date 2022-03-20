/*
Pedro Correa Rigotto - Matricula 762281
guia0404ab
*/

module pos3 (output sA, output sB, input x, y, z);
	assign sA = (x|~y|z)&(x|~y|~z)&(~x|~y|z)&(~x|~y|~z);
	assign sB = (x|y|z)&(x|~y|z)&(x|~y|~z)&(~x|y|~z)&(~x|~y|~z);
endmodule // pos3

module letrasAB;
	reg x, y, z;
	wire sA1, sB1;
	pos3 exercicio(sA1, sB1, x, y, z);
	
	initial begin
		$display("x  y  z  PoS(2,3,6,7)  PoS(0,2,3,5,7)");
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
