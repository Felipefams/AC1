/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

module SoP (output s, input x, y, w, z);
   assign s =
        ( ~x & ~y & ~w & ~z) // 0
      | ( ~x & ~y & ~w & z) // 1
      //| ( ~x & ~y & w & ~z) // 2
      | ( ~x & ~y & w & z) // 3
      //| ( ~x & y & ~w & ~z) // 4
      | ( ~x & y & ~w & z) // 5
      //| ( ~x & y & w & ~z) // 6
      | ( ~x & y & w & z) // 7
      | ( x & ~y & ~w & ~z) // 8
      //| ( x & ~y & ~w & z) // 9
      | ( x & ~y & w & ~z) // 10
      //| ( x & ~y & w & z) // 11
      //| ( x & y & ~w & ~z) // 12
      | ( x & y & ~w & z) // 13
      | ( x & y & w & ~z) // 14
      | ( x & y & w & z); // 15
   
endmodule // SoP

module PoS (output S, input X, Y, W, Z);
   assign S =
      //   ( X | Y | W | Z) //0
      //& ( X | Y | W | ~Z) //1
        ( X | Y | ~W | Z) //2
      //& ( X | Y | ~W | ~Z) //3
      & ( X | ~Y | W | Z) //4
      //& ( X | ~Y | W | ~Z) //5
      & ( X | ~Y | ~W | Z) //6
      //& ( X | ~Y | ~W | ~Z) //7
      //& ( ~X | Y | W | Z) //8
      & ( ~X | Y | W | ~Z) //9
      //& ( ~X | Y | ~W | Z) //10
      & ( ~X | Y | ~W | ~Z) //11
      & ( ~X | ~Y | W | Z); //12
      //& ( ~X | ~Y | W | ~Z) //13
      //& ( ~X | ~Y | ~W | Z) //14
      //& ( ~X | ~Y | ~W | ~Z); //15
   
endmodule // PoS

// teste
module test_module;

   reg x, y, w, z;
   wire s1, s2;

   // instancias
   SoP SOP (s1, x, y, w, z);
   PoS POS (s2, x, y, w, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      w = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("----- Guia0405-e -----\n");
   
      $display("e) SoP = 1 e PoS = 0: \n\n   x y w z   m M");
      $monitor("   %b %b %b %b = %b %b", x, y, w, z, s1, s2);
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

   ----- Guia0405-e -----

   e) SoP = 1 e PoS = 0:

      x y w z   m M
      0 0 0 0 = 1 1
      0 0 0 1 = 1 1
      0 0 1 0 = 0 0
      0 0 1 1 = 1 1
      0 1 0 0 = 0 0
      0 1 0 1 = 1 1
      0 1 1 0 = 0 0
      0 1 1 1 = 1 1
      1 0 0 0 = 1 1
      1 0 0 1 = 0 0
      1 0 1 0 = 1 1
      1 0 1 1 = 0 0
      1 1 0 0 = 0 0
      1 1 0 1 = 1 1
      1 1 1 0 = 1 1
      1 1 1 1 = 1 1

*/