// -------------------------
// Exemplo_0503 - GATES
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// -------------------------
// -------------------------

module g53 ( output s,
 input a,
 input b );
// definir dado local
 wire not_b;
 wire s1;
// descrever por portas
 nor NOR1 (not_b, b, b);
 nor NOR2 (s1, a, not_b);
 nor NOR3 (s, s1, s1);
endmodule // g53


module f5b ( output s,
 input a,
 input b );
// descrever por expressao
 assign s = a | ~b;
endmodule // f5b
module test_f5;

// ------------------------- definir dados
 reg x;
 reg y;
 wire a, b;
 g53 moduloA ( a, x, y );
 f5b moduloB ( b, x, y );
// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0503 - Luana Policarpo de Castro - 752657");
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