/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module SoP (output s, input x, y, z);
   assign s =
   //     ( ~x & ~y & ~z) // 0
        ( ~x & ~y & z) // 1
   //   | ( ~x & y & ~z) // 2
      | ( ~x & y & z) // 3
      | ( x & ~y & ~z) // 4
   //   | ( x & ~y & z) // 5
   //   | ( x & y & ~z) // 6
      | ( x & y & z); // 7
   
endmodule // SoP

// teste
module test_module;

   reg x, y, z;
   wire sb;

   // instancias
   SoP SOP (sb, x, y, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("--- Guia0403-b ---\n");
   
      $display("b) m (1, 3, 4, 7)\n   SoP = 1: \n");
      $monitor("   %b %b %b = %b", x, y, z, sb);
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

   --- Guia0403-b ---

   b) m (1, 3, 4, 7)
      SoP = 1:

      0 0 0 = 0
      0 0 1 = 1
      0 1 0 = 0
      0 1 1 = 1
      1 0 0 = 1
      1 0 1 = 0
      1 1 0 = 0
      1 1 1 = 1

*/