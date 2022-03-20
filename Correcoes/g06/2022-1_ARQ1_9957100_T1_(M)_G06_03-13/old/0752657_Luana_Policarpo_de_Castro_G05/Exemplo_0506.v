// -------------------------
// Exemplo_0506 - GATES
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// -------------------------
// -------------------------

module g56 ( output s,
 input a,
 input b );
// definir dado local
 wire s1, s2, s3, s4;
// descrever por portas
 nand NAND1 (s1, a, a);
 nand NAND2 (s2, b, b);
 nand NAND3 (s3, a, b);
 nand NAND4 (s4, s1, s2);
 nand NAND5 (s, s3, s4);
endmodule // g56


module f5b ( output s,
 input a,
 input b );
// descrever por expressao
 assign s = ~(a ^ b);
endmodule // f5b
module test_f5;

// ------------------------- definir dados
 reg x;
 reg y;
 wire a, b;
 g56 moduloA ( a, x, y );
 f5b moduloB ( b, x, y );
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0506 - Luana Policarpo de Castro - 752657");
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