//TRUTH TABLE
 //Nome: Frederico Malaquias Caldeira
 //Matricula: 747544
 // ---------------------

 module f5a ( output s,
 input a,
 input b );

 wire not_a;

 not NOT1 ( not_a, a );
 not NOT1 ( not_b, b );
 and AND1 ( s, not_a, b );
endmodule 

module f5b ( output s,
 input a,
 input b );

 assign s = ~a & ~b;
endmodule 
module test_f5;

 reg x;
 reg y;
 wire a, b;
 f5a moduloA ( a, x, y );
 f5b moduloB ( b, x, y );

 initial
 begin : main
 $display("Exemplo_0505 - FredericoMalaquias - 05/03/22");
 $display("Test module");
 $display(" x y a b");
 
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
acertei dois modulos, o segundo e o ultimo, testes abaixo
x y a b
   0    0    0    1
   0    1    1    0
   1    0    0    0
   1    1    0    0
*/


