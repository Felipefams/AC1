/*
Pedro Correa Rigotto - Matricula 762281
Exemplo_0507
*/

module ex6 (output s, input a, b);
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9;
	nor NOR1(w1, a, a);
	nor NOR2(w2, b, b);
	nor NOR3(w3, w1, w1);
	nor NOR4(w4, b, b);
	nor NOR5(w5, a, a);
	nor NOR6(w6, w2, w2);
	nor NOR7(w7, w3, w4);
	nor NOR8(w8, w5, w6);
	nor NOR9(w9, w7, w8);
	nor NOR10(s, w9, w9);
	
endmodule // ex6

// Previsao:
// m a b s  (~a&b)|(a&~b)
// 0 0 0 0
// 1 0 1 1
// 2 1 0 1
// 3 1 1 0

module test;
	wire s;
	reg a, b;
	ex6 mod1(s, a, b);
	integer i;
	
	initial
	begin
		i = 0;
		$display("s = a^b = (~a&b)|(a&~b)");
		$display("m a b s");
		$monitor("%1d %b %b %b", i, a, b, s);
		a = 0; b = 0;
		#1 a = 0; b = 1; i = i+1;
		#1 a = 1; b = 0; i = i+1;
		#1 a = 1; b = 1; i = i+1;
	end
endmodule // test