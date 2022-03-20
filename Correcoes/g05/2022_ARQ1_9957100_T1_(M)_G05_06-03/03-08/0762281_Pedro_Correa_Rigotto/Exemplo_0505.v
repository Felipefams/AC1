/*
Pedro Correa Rigotto - Matricula 762281
Exemplo_0505
*/

module ex4 (output s, input a, b);
	wire w1, w2, w3, w4;
	nor NOR1(w1, a, a);
	nor NOR2(w2, b, b);
	nor NOR3(w3, w1, w1);
	nor NOR4(w4, w2, w2);
	nor NOR5(s, w3, w4);
endmodule // ex4

// Previsao:
// m a b s
// 0 0 0 1
// 1 0 1 0
// 2 1 0 0
// 3 1 1 0

module test;
	wire s;
	reg a, b;
	ex4 mod1(s, a, b);
	integer i;
	
	initial
	begin
		i = 0;
		$display("s = ~a&~b");
		$display("m a b s");
		$monitor("%1d %b %b %b", i, a, b, s);
		a = 0; b = 0;
		#1 a = 0; b = 1; i = i+1;
		#1 a = 1; b = 0; i = i+1;
		#1 a = 1; b = 1; i = i+1;
	end
endmodule // test