/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

module SoP (output s, input x, y, z);
   assign s = ( ~x & y & z) | ( x & ~y & ~z);
   
endmodule // SoP

module PoS (output S, input X, Y, Z);

   assign S =
        ( X | Y | Z) // 0
      &  ( X | Y | ~Z) // 1
      & ( X | ~Y | Z) // 2
      //& ( X | ~Y | ~Z) // 3
      //& ( ~X | Y | Z) // 4
      & ( ~X | Y | ~Z) // 5
      & ( ~X | ~Y | Z) // 6
      & ( ~X | ~Y | ~Z); // 7
   
endmodule // PoS

// teste
module test_module;

   reg x, y, z;
   wire s1, s2;

   // instancias
   SoP SOP (s1, x, y, z);
   PoS POS (s2, x, y, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("-- Guia0407 --\n");
   
      $display("  x y z   m M");
      $monitor("  %b %b %b = %b %b", x, y, z, s1, s2);
      #1 x=0; y=0; z=0;
      #1 x=0; y=0; z=1;
      #1 x=0; y=1; z=0;
      #1 x=0; y=1; z=1;
      #1 x=1; y=0; z=0;
      #1 x=1; y=0; z=1;
      #1 x=1; y=1; z=0;
      #1 x=1; y=1; z=1;

   end

endmodule

/*

   -- Guia0407 --

   x y z   m M
   0 0 0 = 1 1
   0 0 1 = 1 1
   0 1 0 = 1 1
   0 1 1 = 0 0
   1 0 0 = 0 0
   1 0 1 = 1 1
   1 1 0 = 1 1
   1 1 1 = 1 1

*/