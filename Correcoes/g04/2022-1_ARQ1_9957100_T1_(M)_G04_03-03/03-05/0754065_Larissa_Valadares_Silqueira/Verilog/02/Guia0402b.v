/*
   Arquitetura de Computadores I - Guia_04,

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module fxyz (output s1, s2, input x, y);
   assign s1 = (~x | ~y) | (~x & y);
   assign s2 = ~(x & y) | (~x & y);
endmodule

// teste
module test_module;

   reg x, y;
   wire sb, ss;

   // instancias
   fxyz FXYZ (sb, ss, x, y);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("-------- Guia0402-b --------\n");
   
      $display("b) (x' + y') + (x' . y) = s\n   (x . y)' + (x' . y) = ss\n\n   x y   s ss");
      $monitor("   %b %b = %b %b", x, y, sb, ss);
      #1 x=0; y=0;
      #1 x=0; y=1;
      #1 x=1; y=0;
      #1 x=1; y=1;

   end

endmodule

/*

   -------- Guia0402-b --------

   b) (x' + y') + (x' . y) = s
      (x . y)' + (x' . y) = ss

      x y   s ss
      0 0 = 1 1
      0 1 = 1 1
      1 0 = 1 1
      1 1 = 0 0

*/