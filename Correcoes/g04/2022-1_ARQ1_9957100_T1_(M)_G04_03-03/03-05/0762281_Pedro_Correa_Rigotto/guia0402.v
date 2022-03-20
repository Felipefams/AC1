/*
Pedro Correa Rigotto - Matricula 762281
guia0402
*/

module fxy (output a1, output a2, output b1, output b2, output c1, output c2, output d1, output d2, output e1, output e2, input x, y);
	assign a1 = x&~(~x|~y); 		// numero 1 eh o anunciado
	assign a2 = x&y;				// numero 2 eh a resposta
	assign b1 = (~x|~y)|(~x&y);
	assign b2 = ~y|~x;
	assign c1 = ~(~x&~y)&(~x|~y);
	assign c2 = (y&~x)|(x&~y);
	assign d1 = ~(x&~y)|~(x|~y);
	assign d2 = y|~x;
	assign e1 = ~(~y|x)&(~y|x);
	assign e2 = 0;
endmodule // fxy

module teste;
	reg x, y;
	wire a1, a2, b1, b2, c1, c2, d1, d2, e1, e2;
	fxy checar (a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, x, y);
	
	initial
	begin
		x = 0; y = 0;
		$display("x  y  a1 a2 b1 b2 c1 c2 d1 d2 e1 e2");
		$monitor("%b  %b  %b  %b  %b  %b  %b  %b  %b  %b  %b  %b", x, y, a1, a2, b1, b2, c1, c2, d1, d2, e1, e2);
		#1 x = 0; y = 1;
		#1 x = 1; y = 0;
		#1 x = 1; y = 1;
		
	end
endmodule // teste