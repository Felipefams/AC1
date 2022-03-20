/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

module SoP (output s, input x, y);
   assign s =
      //   ( ~x & ~y ) // 0
        ( ~x & y ) // 1
      //| ( x & ~y ) // 2
      | ( x & y ); // 3
   
endmodule // SoP

module PoS (output S, input X, Y);
   assign S =
        ( X | Y ) // 0
      //&  ( X | ~Y ) // 1
      &  ( ~X | Y ); // 2
      //& ( ~X | ~Y ); // 3
   
endmodule // PoS

// teste
module test_module;

   reg x, y;
   wire s1, s2;

   // instancias
   SoP SOP (s1, x, y);
   PoS POS (s2, x, y);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("----- Guia0405-b -----\n");
   
      $display("b) SoP = 1 e PoS = 0: \n\n   x y   m M");
      $monitor("   %b %b = %b %b", x, y, s1, s2);
      #1 x=0; y=0;
      #1 x=0; y=1;
      #1 x=1; y=0;
      #1 x=1; y=1;

   end

endmodule

/*

   ----- Guia0405-b -----

   b) SoP = 1 e PoS = 0:

      x y   m M
      0 0 = 0 0
      0 1 = 1 1
      1 0 = 0 0
      1 1 = 1 1

*/