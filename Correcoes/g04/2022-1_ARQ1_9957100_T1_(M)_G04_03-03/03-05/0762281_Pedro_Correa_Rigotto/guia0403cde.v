/*
Pedro Correa Rigotto - Matricula 762281
guia0403cde
*/

module sop4(output sC, output sD, output sE, input x, y, w, z);
	assign sC = (~x&~y&~w&z)|(~x&~y&w&~z)|(~x&y&~w&z)|(~x&y&w&~z)|(x&~y&~w&z)|(x&y&~w&~z)|(x&y&w&~z);
	assign sD = (~x&~y&~w&~z)|(~x&~y&w&~z)|(~x&y&w&~z)|(~x&y&w&z)|(x&~y&~w&z)|(x&~y&w&~z)|(x&y&~w&~z);
	assign sE = (~x&~y&~w&z)|(~x&~y&w&~z)|(~x&~y&w&z)|(~x&y&~w&z)|(~x&y&w&z)|(x&y&~w&z);
endmodule // sop4

module letrasCDE;
	reg x, y, w, z;
	wire sC, sD, sE;
	sop4 exercicio (sC, sD, sE, x, y, w, z);
	
	initial begin
		$display("x  y  w  z  SoP(1,2,5,6,9,12,14)  SoP(0,2,6,7,9,10,12)  SoP(1,2,3,5,7,13)");
		$monitor("%b  %b  %b  %b  %b                     %b                     %b", x, y, w, z, sC, sD, sE);
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