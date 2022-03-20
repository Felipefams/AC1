// -------------------------
// Exemplo_0605 
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// -------------------------
// -------------------------

module fxyz (output s,
 input x,
 input y,
 input z);
// definir dado local
 wire not_y;
 wire not_z;
 wire s1;
 wire s2;
// descrever por portas
 not NOT1 (not_y, y);
 not NOT2 (not_z, z);
 and AND1 (s1, x, not_y);
 and AND2 (s2, x, not_z);
 or OR1 (s, s1, s2);
endmodule // fxyz


module test (output s,
 input x,
 input y,
 input z);
// descrever por expressao
 assign s = (x & ~y) | (x & ~z);
endmodule // test

module Guia_0605;
// ------------------------- definir dados
 reg x;
 reg y;
 reg z;
 wire a, b;
 fxyz moduloA (a, x, y, z);
 test moduloB (b, x, y, z);
// ------------------------- parte principal
 initial
 begin : main
 $display("Guia_0605 - Luana Policarpo de Castro - 752657");
 $display("   x    y    z    a    b");
 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b %4b", x, y, z, a, b);
 x = 1'b0; y = 1'b0; z = 1'b0;

 #1 x = 1'b0; y = 1'b0; z = 1'b0;
 #1 x = 1'b0; y = 1'b0; z = 1'b1;
 #1 x = 1'b0; y = 1'b1; z = 1'b0;
 #1 x = 1'b0; y = 1'b1; z = 1'b1;
 #1 x = 1'b1; y = 1'b0; z = 1'b0;
 #1 x = 1'b1; y = 1'b0; z = 1'b1;
 #1 x = 1'b1; y = 1'b1; z = 1'b0;
 #1 x = 1'b1; y = 1'b1; z = 1'b1;
 end
endmodule // Guia_0605