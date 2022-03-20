/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module SoP (output s, input x, y, w, z);
   assign s =
        ( ~x & ~y & ~w & ~z) // 0
      //| ( ~x & ~y & ~w & z) // 1
      | ( ~x & ~y & w & ~z) // 2
      //| ( ~x & ~y & w & z) // 3
      //| ( ~x & y & ~w & ~z) // 4
      //| ( ~x & y & ~w & z) // 5
      | ( ~x & y & w & ~z) // 6
      | ( ~x & y & w & z) // 7
      //| ( x & ~y & ~w & ~z) // 8
      | ( x & ~y & ~w & z) // 9
      | ( x & ~y & w & ~z) // 10
      //| ( x & ~y & w & z) // 11
      | ( x & y & ~w & ~z); // 12
      //| ( x & y & ~w & z) // 13
      //| ( x & y & w & ~z) // 14
      //| ( x & y & w & z); // 15
   
endmodule // SoP

// teste
module test_module;

   reg x, y, w, z;
   wire sd;

   // instancias
   SoP SOP (sd, x, y, w, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      w = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("-------- Guia0403-d --------\n");
   
      $display("d) m (0, 2, 6, 7, 9, 10, 12)\n   SoP = 1: \n");
      $monitor("   %b %b %b %b = %b", x, y, w, z, sd);
      #1 x=0; y=0; w=0; z=0;
      #1 x=0; y=0; w=0; z=1;
      #1 x=0; y=0; w=1; z=0;
      #1 x=0; y=0; w=1; z=1;
      #1 x=0; y=1; w=0; z=0;
      #1 x=0; y=1; w=0; z=1;
      #1 x=0; y=1; w=1; z=0;
      #1 x=0; y=1; w=1; z=1;
      #1 x=1; y=0; w=0; z=0;
      #1 x=1; y=0; w=0; z=1;
      #1 x=1; y=0; w=1; z=0;
      #1 x=1; y=0; w=1; z=1;
      #1 x=1; y=1; w=0; z=0;
      #1 x=1; y=1; w=0; z=1;
      #1 x=1; y=1; w=1; z=0;
      #1 x=1; y=1; w=1; z=1;

   end

endmodule

/*

   -------- Guia0403-d --------

   d) m (0, 2, 6, 7, 9, 10, 12)
      SoP = 1:

      0 0 0 0 = 1
      0 0 0 1 = 0
      0 0 1 0 = 1
      0 0 1 1 = 0
      0 1 0 0 = 0
      0 1 0 1 = 0
      0 1 1 0 = 1
      0 1 1 1 = 1
      1 0 0 0 = 0
      1 0 0 1 = 1
      1 0 1 0 = 1
      1 0 1 1 = 0
      1 1 0 0 = 1
      1 1 0 1 = 0
      1 1 1 0 = 0
      1 1 1 1 = 0

*/