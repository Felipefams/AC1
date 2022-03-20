/*
   Arquitetura de Computadores I - Guia_05

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

/*

   m a b s
   0 0 0 1 <- a'. b'
   1 0 1 0
   2 1 0 0
   3 1 1 0

*/

// estado dos elementos
module f5a (output s, input a, b);

   wire not_a;
   wire not_b;

   not NOT1 ( not_a, a );
   not NOT2 ( not_b, b );
   and AND1 ( s, not_a, not_b );

endmodule

// expressao
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
      $display("-- Guia0504 --\n");
      $display("  ~a & ~b = s\n\n  a b  s");
      $monitor("  %b %b  %b ", x, y, s);

      x = 1'b0; y = 1'b0;
      #1 x = 1'b0; y = 1'b1;
      #1 x = 1'b1; y = 1'b0;
      #1 x = 1'b1; y = 1'b1;
   
   end

endmodule

/*

   -- Guia0504 --

   ~a & ~b = s

   a b  s
   0 0  1
   0 1  0
   1 0  0
   1 1  0

*/