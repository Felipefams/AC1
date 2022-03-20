// -------------------------
// Exemplo_0505 - GATES
// Nome:Felipe Augusto Morais Silva 
// Matricula: 748473 
// -------------------------
/*
vai ser a entra na nand, b entra na nand, output dos dois vai pra outra nand
e o output dessa nand vai pra outra nand
*/
module f5a ( output s,input a,input b );
// (a | ~b)
// definir dado local
wire a_nor, b_nor; 
wire out1,out2;

nor NOR1 (a_nor,a,a);
nor NOR2 (b_nor,b,b);
nor NOR3 (out1,a_nor,b_nor);
nor NOR4 (s, out1, out1);
// descrever por portas
endmodule // f5a
// -------------------------
module f5b ( output s,input a,input b );
// descrever por expressao
assign s = (~(~(a | a) | (~b | b)) | ~(~(a | a) | (~b | b)));
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
$display("Exemplo_0501 - Felipe Augusto Morais Silva - 748473");
$display("Test module");
$display("   x 	y    a    b");
// projetar testes do modulo
$monitor("%4b %4b %4b %4b", x, y, a, b);
x = 1'b0; y = 1'b0;
#1
 x = 1'b0; y = 1'b1;
#1
 x = 1'b1; y = 1'b0;
#1
 x = 1'b1; y = 1'b1;
end
endmodule // test_f5
