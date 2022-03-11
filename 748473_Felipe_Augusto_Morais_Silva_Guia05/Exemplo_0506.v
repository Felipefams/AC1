// -------------------------
// Exemplo_0506 - GATES
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
wire a_nand, b_nand; 
wire out1,out2,out3,outFinal;

nand NAND1 (out1,a,b);
nand NAND2 (out2, a, out1);
nand NAND3 (out3,b,out1);
nand NAND4 (outFinal, out2, out3);
nand NAND5 (s, outFinal, outFinal);
// descrever por portas
endmodule // f5a
// -------------------------
module f5b ( output s,input a,input b );
// descrever por expressao
assign s = (~(~(a & a) & ~(b & b)) & ~(a & b));
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
