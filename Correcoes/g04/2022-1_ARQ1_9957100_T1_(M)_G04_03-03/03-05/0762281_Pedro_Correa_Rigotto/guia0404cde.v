/*
Pedro Correa Rigotto - Matricula 762281
guia0404cde
*/

module pos4(output sC, output sD, output sE, input x, y, w, z);
	assign sC = (x|y|w|z)&(x|y|w|~z)&(x|y|~w|z)&(x|~y|w|z)&(x|~y|~w|z)&(~x|y|w|z)&(~x|~y|w|z)&(~x|~y|~w|z);
	assign sD = (x|y|w|z)&(x|y|~w|z)&(x|~y|w|z)&(x|~y|~w|z)&(~x|y|w|~z)&(~x|y|~w|z)&(~x|~y|w|~z);
	assign sE = (x|y|w|z)&(x|y|w|~z)&(x|y|~w|z)&(x|y|~w|~z)&(x|~y|~w|z)&(~x|y|~w|~z)&(~x|~y|~w|z);
endmodule // pos4

module letrasCDE;
	reg x, y, w, z;
	wire sC, sD, sE;
	pos4 exercicio (sC, sD, sE, x, y, w, z);
	
	initial begin
		$display("x  y  w  z  PoS(0,1,2,4,6,8,12,14)  PoS(0,2,4,6,9,10,13)  PoS(0,1,2,3,6,11,14)");
		$monitor("%b  %b  %b  %b  %b                       %b                     %b", x, y, w, z, sC, sD, sE);
		    x = 0; y = 0; w = 0; z = 0;
		#1  x = 0; y = 0; w = 0; z = 1;
		#1  x = 0; y = 0; w = 1; z = 0;
		#1  x = 0; y = 0; w = 1; z = 1;
		#1  x = 0; y = 1; w = 0; z = 0;
		#1  x = 0; y = 1; w = 0; z = 1;
		#1  x = 0; y = 1; w = 1; z = 0;
		#1  x = 0; y = 1; w = 1; z = 1;
		#1  x = 1; y = 0; w = 0; z = 0;
		#1  x = 1; y = 0; w = 0; z = 1;
		#1  x = 1; y = 0; w = 1; z = 0;
		#1  x = 1; y = 0; w = 1; z = 1;
		#1  x = 1; y = 1; w = 0; z = 0;
		#1  x = 1; y = 1; w = 0; z = 1;
		#1  x = 1; y = 1; w = 1; z = 0;
		#1  x = 1; y = 1; w = 1; z = 1;
	end
endmodule // letrasCDE