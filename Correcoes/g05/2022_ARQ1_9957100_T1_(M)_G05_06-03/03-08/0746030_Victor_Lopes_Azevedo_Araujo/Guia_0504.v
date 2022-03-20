/*
Aluno: Victor Lopes Azevedo Araujo
N⁰ de Matricula: 746030
*/

/*
Previsão de Testes:

s = ~a & ~b

  a b  s
  0 0  1 
  0 1  0 
  1 0  0 
  1 1  0 
*/

module f5a (output s, input a, b);

   wire not_a;
   wire not_b;

   not NOT2 ( not_a, a );
   not NOT1 ( not_b, b );
   and AND1 ( s, not_a, not_b );

endmodule

module f5b (output s, input a, b);

   assign s = ~a & ~b;

endmodule

module test_f5;

   reg x;
   reg y;
   
   wire s;
   
   f5a moduloA ( s, x, y );
   f5b moduloB ( s, x, y );

   initial begin : main
      $display ( "Guia_0504 - Tests" );
      $display("  ~a & ~b = s\n\n  a b  s");
      $monitor("  %b %b  %b ", x, y, s);

      x = 1'b0; y = 1'b0;
      #1 x = 1'b0; y = 1'b1;
      #1 x = 1'b1; y = 1'b0;
      #1 x = 1'b1; y = 1'b1;
   
   end

endmodule