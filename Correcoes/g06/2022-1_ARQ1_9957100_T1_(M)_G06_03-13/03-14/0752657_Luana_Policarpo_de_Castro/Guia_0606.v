// -------------------------
// Exemplo_0606
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// -------------------------
// -------------------------

module fxywz (output s,
 input x,
 input y,
 input w,
 input z);
// definir dado local
 wire not_y;
 wire not_w;
 wire not_z;
 wire s1;
// descrever por portas
 not NOT1 (not_y, y);
 not NOT2 (not_w, w);
 not NOT3 (not_z, z);
 or OR1 (s1, not_y, not_w, not_z);
 and AND1 (s, x, s1);
endmodule // fxywz


module test (output s,
 input x,
 input y,
 input w,
 input z);
// descrever por expressao
 assign s = x & (~y | ~w | ~z);
endmodule // test

module Guia_0606;
// ------------------------- definir dados
 reg x;
 reg y;
 reg w;
 reg z;
 wire a, b;
 fxywz moduloA (a, x, y, w, z);
 test moduloB (b, x, y, w, z);
// ------------------------- parte principal
 initial
 begin : main
 $display("Guia_0606 - Luana Policarpo de Castro - 752657");
 $display("   x    y    w    z    a    b");
 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b %4b %4b", x, y, w, z, a, b);
 x = 1'b0; y = 1'b0; w = 1'b0; z = 1'b0;

 #1 x = 1'b0; y = 1'b0; w = 1'b0; z = 1'b0;
 #1 x = 1'b0; y = 1'b0; w = 1'b0; z = 1'b1;
 #1 x = 1'b0; y = 1'b0; w = 1'b1; z = 1'b0;
 #1 x = 1'b0; y = 1'b0; w = 1'b1; z = 1'b1;
 #1 x = 1'b0; y = 1'b1; w = 1'b0; z = 1'b0;
 #1 x = 1'b0; y = 1'b1; w = 1'b0; z = 1'b1;
 #1 x = 1'b0; y = 1'b1; w = 1'b1; z = 1'b0;
 #1 x = 1'b0; y = 1'b1; w = 1'b1; z = 1'b1;
 #1 x = 1'b1; y = 1'b0; w = 1'b0; z = 1'b0;
 #1 x = 1'b1; y = 1'b0; w = 1'b0; z = 1'b1;
 #1 x = 1'b1; y = 1'b0; w = 1'b1; z = 1'b0;
 #1 x = 1'b1; y = 1'b0; w = 1'b1; z = 1'b1;
 #1 x = 1'b1; y = 1'b1; w = 1'b0; z = 1'b0;
 #1 x = 1'b1; y = 1'b1; w = 1'b0; z = 1'b1;
 #1 x = 1'b1; y = 1'b1; w = 1'b1; z = 1'b0;
 #1 x = 1'b1; y = 1'b1; w = 1'b1; z = 1'b1;
 end
endmodule // Guia_0606