/*
Pedro Correa Rigotto - Matricula 762281
Exemplo_0503
*/

module ex2 (output s, input a, b);
	wire w1, w2;
	nor NOR1(w1, b, b);
	nor NOR2(w2, w1, a);
	nor NOR3(s, w2, w2);
endmodule // ex2

// Previsao:
// m a b s
// 0 0 0 1
// 1 0 1 0
// 2 1 0 1
// 3 1 1 1

module test;
	wire s;
	reg a, b;
	ex2 mod1(s, a, b);
	integer i;
	
	initial
	begin
		i = 0;
		$display("s = a|~b");
		$display("m a b s");
		$monitor("%1d %b %b %b", i, a, b, s);
		a = 0; b = 0;
		#1 a = 0; b = 1; i = i+1;
		#1 a = 1; b = 0; i = i+1;
		#1 a = 1; b = 1; i = i+1;
	end
endmodule // test