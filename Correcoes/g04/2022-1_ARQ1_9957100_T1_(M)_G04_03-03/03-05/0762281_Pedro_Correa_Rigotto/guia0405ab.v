/*
Pedro Correa Rigotto - Matricula 762281
guia0405ab
*/

module fxy (output sopa, output posa, output sopb, output posb, input x, y);
	assign sopa = (~x&~y)|(x&~y)|(x&y);
	assign posa = (x|~y);
	assign sopb = (~x&y)|(x&y);
	assign posb = (x|y)&(~x|y);
endmodule // fxy

module letrasAB;
	reg x, y;
	wire sopa, sopb, posa, posb;
	fxy exercicio(sopa, posa, sopb, posb, x, y);
	integer n;
	
	initial begin
		$display("n  x  y  SoP(0,2,3)  PoS(1)  SoP(1,3)  PoS(0,2)");
		$monitor("%1d  %b  %b  %b           %b       %b         %b", n, x, y, sopa, posa, sopb, posb);
		   n = 0;   x = 0; y = 0;
		#1 n = n+1; x = 0; y = 1;
		#1 n = n+1; x = 1; y = 0;
		#1 n = n+1; x = 1; y = 1;
	end
endmodule // letrasAB