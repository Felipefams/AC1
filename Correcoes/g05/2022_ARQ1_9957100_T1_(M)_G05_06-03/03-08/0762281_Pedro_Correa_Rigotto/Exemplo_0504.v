/*
Pedro Correa Rigotto - Matricula 762281
Exemplo_0504
*/

module ex3 (output s, input a, b);
	wire w1, w2, w3, w4;
	nand NAND1(w1, a, a);
	nand NAND2(w2, b, b);
	nand NAND3(w3, w1, w1);
	nand NAND4(w4, w2, w2);
	nand NAND5(s, w3, w4);
endmodule // ex3

// Previsao:
// m a b s
// 0 0 0 1
// 1 0 1 1
// 2 1 0 1
// 3 1 1 0

module test;
	wire s;
	reg a, b;
	ex3 mod1(s, a, b);
	integer i;
	
	initial
	begin
		i = 0;
		$display("s = ~a|~b");
		$display("m a b s");
		$monitor("%1d %b %b %b", i, a, b, s);
		a = 0; b = 0;
		#1 a = 0; b = 1; i = i+1;
		#1 a = 1; b = 0; i = i+1;
		#1 a = 1; b = 1; i = i+1;
	end
endmodule // test