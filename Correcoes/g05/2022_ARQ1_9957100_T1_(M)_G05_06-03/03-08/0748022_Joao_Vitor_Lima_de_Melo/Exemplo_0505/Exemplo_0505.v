// -------------------------
// Exemplo_0505 - GATES
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// -------------------------

module f5a ( output s,
input a,
input b );
// definir dado local
wire w1, w2;
// descrever por portas

nor NOR1 (w1, a, b);
nor NOR2 (w2, w1);
nor NOR3 (s, w2);

endmodule // f5a

module f5b ( output s,
input a,
input b );
// descrever por expressao
assign s = ~a & ~b;
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
$display("Exemplo_0505 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test module");
$display("   x    y    a    b");
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
