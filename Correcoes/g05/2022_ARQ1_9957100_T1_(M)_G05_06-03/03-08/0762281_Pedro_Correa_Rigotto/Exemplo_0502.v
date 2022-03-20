/*
Pedro Correa Rigotto - Matricula 762281
Exemplo_0502
*/

module ex1 (output s, input a, b);
	wire w1, w2;
	nand NAND1(w1, a, a);
	nand NAND2(w2, w1, b);
	nand NAND3(s, w2, w2);
endmodule // ex1

// Previsao:
// m a b s
// 0 0 0 0
// 1 0 1 1
// 2 1 0 0
// 3 1 1 0

module test;
	wire s;
	reg a, b;
	ex1 mod1(s, a, b);
	integer i;
	
	initial
	begin
		i = 0;
		$display("s = ~a&b");
		$display("m a b s");
		$monitor("%1d %b %b %b", i, a, b, s);
		a = 0; b = 0;
		#1 a = 0; b = 1; i = i+1;
		#1 a = 1; b = 0; i = i+1;
		#1 a = 1; b = 1; i = i+1;
	end
endmodule // test


/*// -------------------------
// Exemplo_0501 - GATES
// Nome: xxx yyy zzz
// Matricula: 999999
// -------------------------
// -------------------------
// f5_gate
// m a b s
// 0 0 0 0
// 1 0 1 1 <- a'.b
// 2 1 0 0
// 3 1 1 0
//
// -------------------------
module f5a ( output s,
input a,
input b );
// definir dado local
wire not_a;
// descrever por portas
not NOT1 ( not_a, a );
and AND1 ( s, not_a, b );
endmodule // f5a
// -------------------------
// f5_gate
// m a b s
// 0 0 0 0
// 1 0 1 1 <- a'.b
// 2 1 0 0
// 3 1 1 0
//
// -------------------------
module f5b ( output s,
input a,
input b );
// descrever por expressao
assign s = ~a & b;
endmodule // f5b
module test_f5;
// ------------------------- definir dados
reg x;
reg y;
wire a, b;
f5a moduloA ( a, x, y );
f5b moduloB ( b, x, y );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0501 - xxx yyy zzz - 999999");
$display("Test module");
$display(" x y a b");
// projetar testes do modulo
$monitor("%4b %4b %4b %4b", x, y, a, b);
x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // test_f5*/