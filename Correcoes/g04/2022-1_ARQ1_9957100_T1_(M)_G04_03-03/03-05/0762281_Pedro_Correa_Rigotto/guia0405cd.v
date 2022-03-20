/*
Pedro Correa Rigotto - Matricula 762281
guia0405cd
*/

module fxyz(output sopc, output posc, output sopd, output posd, input x, y, z);
	assign sopc = (~x&~y&~z)|(~x&y&~z)|(x&~y&~z)|(x&y&~z)|(x&y&z);
	assign posc = (x|y|~z)&(x|~y|~z)&(~x|y|~z);
	assign sopd = (~x&~y&~z)|(~x&~y&z)|(~x&y&~z)|(~x&y&z)|(x&y&~z)|(x&y&z);
	assign posd = (~x|y|z)&(~x|y|~z);
endmodule // fxyz

module letrasCD;
	reg x, y, z;
	integer n;
	wire sopc, posc, sopd, posd;
	fxyz exercicio(sopc, posc, sopd, posd, x, y, z);
	
	initial begin
		$display("n  x  y  z  SoP(0,2,4,6,7)  PoS(1,3,5)  SoP(0,1,2,3,6,7)  PoS(4,5)");
		$monitor("%1d  %b  %b  %b  %b               %b           %b                 %b", n, x, y, z, sopc, posc, sopd, posd);
		   x = 0; y = 0; z = 0; n = 0;
		#1 x = 0; y = 0; z = 1; n = n+1;
		#1 x = 0; y = 1; z = 0; n = n+1;
		#1 x = 0; y = 1; z = 1; n = n+1;
		#1 x = 1; y = 0; z = 0; n = n+1;
		#1 x = 1; y = 0; z = 1; n = n+1;
		#1 x = 1; y = 1; z = 0; n = n+1;
		#1 x = 1; y = 1; z = 1; n = n+1;
	end
endmodule // letrasCD