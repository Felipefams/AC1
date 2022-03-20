// -------------------------
// Exemplo_0505 - GATES
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// -------------------------
// -------------------------

module g55 ( output s,
 input a,
 input b );
// definir dado local
 wire not_a, not_b;
 wire s1, s2;
// descrever por portas
 nor NOR1 (not_a, a, a);
 nor NOR2 (not_b, b, b);
 nor NOR3 (s1, not_a, not_a);
 nor NOR4 (s2, not_b, not_b);
 nor NOR5 (s, s1, s2);
endmodule // g55


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
 g55 moduloA ( a, x, y );
 f5b moduloB ( b, x, y );
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0505 - Luana Policarpo de Castro - 752657");
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