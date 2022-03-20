/*
Pedro Correa Rigotto - Matricula 762281
Exemplo_0506
*/

module ex5 (output s, input a, b);
	wire w1, w2, w3, w4, w5, w6, w7, w8;
	nand NAND1(w1, a, a);
	nand NAND2(w2, b, b);
	nand NAND3(w3, w1, w2);
	nand NAND4(w4, a, b);
	nand NAND5(w5, w3, w3);
	nand NAND6(w6, w4, w4);
	nand NAND7(w7, w5, w5);
	nand NAND8(w8, w6, w6);
	nand NAND9(s, w7, w8);
	
endmodule // ex5

// Previsao:
// m a b s  (~a&~b)|(a&b)
// 0 0 0 1
// 1 0 1 0
// 2 1 0 0
// 3 1 1 1

module test;
	wire s;
	reg a, b;
	ex5 mod1(s, a, b);
	integer i;
	
	initial
	begin
		i = 0;
		$display("s = ~(a^b) = (~a&~b)|(a&b)");
		$display("m a b s");
		$monitor("%1d %b %b %b", i, a, b, s);
		a = 0; b = 0;
		#1 a = 0; b = 1; i = i+1;
		#1 a = 1; b = 0; i = i+1;
		#1 a = 1; b = 1; i = i+1;
	end
endmodule // test