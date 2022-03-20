/*
   Arquitetura de Computadores I - Guia_05

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

/*

   m a b s
   0 0 0 1 <- (a ^ b)'
   1 0 1 0
   2 1 0 0
   3 1 1 1 <- (a ^ b)'

*/

// estado dos elementos
module f5a (output s, input a, b);

   xnor XNOR1 ( s, a, b );

endmodule

// expressao
module f5b (output s, input a, b);

   assign s = ~ (a ^ b);

endmodule

module test_f5;

   reg x;
   reg y;
   
   wire s;
   
   f5a moduloA ( s, x, y );
   f5b moduloB ( s, x, y );

   initial begin : main
      $display("--- Guia0505 ---\n");
      $display("  ~ (a ^ b) = s\n\n  a b  s");
      $monitor("  %b %b  %b ", x, y, s);

      x = 1'b0; y = 1'b0;
      #1 x = 1'b0; y = 1'b1;
      #1 x = 1'b1; y = 1'b0;
      #1 x = 1'b1; y = 1'b1;
   
   end

endmodule

/*

   --- Guia0505 ---

   ~ (a ^ b) = s

   a b  s
   0 0  1
   0 1  0
   1 0  0
   1 1  1

*/