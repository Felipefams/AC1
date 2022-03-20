//TRUTH TABLE
 //Nome: Frederico Malaquias Caldeira
 //Matricula: 747544
 // ---------------------

 module f5a ( output s,
 input a,
 input b );
// definir dado local
 wire xnor_a;
// descrever por portas
 xnor XNOR1 ( xnor_a, a );
 and AND1 ( s, xnor_a, b );
endmodule 

module f5b ( output s,
 input a,
 input b );
// descrever por expressao
 assign s = ~a ^ b;
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
 $display("Exemplo_0505 - Frederico_Malaquias - 05/03/22");
 $display("Test module");
 $display(" x y a b");
 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b", x, y, a, b);
 x = 1'b0; y = 1'b0;
 #1 x = 1'b0; y = 1'b1;
 #1 x = 1'b1; y = 1'b0;
 #1 x = 1'b1; y = 1'b1;
 end
endmodule 

/* previsao de testes 
Test module
 x y a b
   1    1    0    1    
   0    1    1    0
   1    0    1    1
   1    1    0    0
*/
/*
  Codigo testado usando apenas as portas XNOR

 Test module
 x y a b
   0    0    0    1
   0    1    1    0
   1    0    0    0
   1    1    0    1
   */

