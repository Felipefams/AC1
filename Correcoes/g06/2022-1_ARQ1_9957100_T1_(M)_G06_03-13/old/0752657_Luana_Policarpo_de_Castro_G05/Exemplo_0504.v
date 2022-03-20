// -------------------------
// Exemplo_0504 - GATES
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// -------------------------
// -------------------------

module g54 ( output s,
 input a,
 input b );
// definir dado local
 wire not_a, not_b;
 wire s1, s2;
// descrever por portas
 nand NAND1 (not_a, a, a);
 nand NAND2 (not_b, b, b);
 nand NAND3 (s1, not_a, not_a);
 nand NAND4 (s2, not_b, not_b);
 nand NAND5 (s, s1, s2);
endmodule // g54


module f5b ( output s,
 input a,
 input b );
// descrever por expressao
 assign s = ~a | ~b;
endmodule // f5b
module test_f5;

// ------------------------- definir dados
 reg x;
 reg y;
 wire a, b;
 g54 moduloA ( a, x, y );
 f5b moduloB ( b, x, y );
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0504 - Luana Policarpo de Castro - 752657");
 $display("Test module");
 $display("   x    y    a    b");
 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b", x, y, a, b);
 x = 1'b0; y = 1'b0;
 #1 x = 1'b0; y = 1'b1;
 #1 x = 1'b1; y = 1'b0;
 #1 x = 1'b1; y = 1'b1;
 end
endmodule // test_f5