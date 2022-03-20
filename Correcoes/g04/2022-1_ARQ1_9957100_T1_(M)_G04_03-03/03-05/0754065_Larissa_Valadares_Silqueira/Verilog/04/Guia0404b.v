/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module PoS (output S, input X, Y, Z);
   assign S =
        ( X | Y | Z) // 0
      //& ( X | Y | ~Z) // 1
      &  ( X | ~Y | Z) // 2
      & ( X | ~Y | ~Z) // 3
      //& ( ~X | Y | Z) // 4
      & ( ~X | Y | ~Z) // 5
      //& ( ~X | ~Y | Z) // 6
      & ( ~X | ~Y | ~Z); // 7
   
endmodule // PoS

// teste
module test_module;

   reg X, Y, Z;
   wire S;

   // instancias
   PoS POS (S, X, Y, Z);

   // valores iniciais
   initial begin: start
      
      X = 1'b0;
      Y = 1'b0;
      Z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("---- Guia0404-b ----\n");
   
      $display("b) M (0, 2, 3, 5, 7)\n   PoS = 0: \n");
      $monitor("   %b %b %b = %b", X, Y, Z, S);
      #1 X=0; Y=0; Z=0;
      #1 X=0; Y=0; Z=1;
      #1 X=0; Y=1; Z=0;
      #1 X=0; Y=1; Z=1;
      #1 X=1; Y=0; Z=0;
      #1 X=1; Y=0; Z=1;
      #1 X=1; Y=1; Z=0;
      #1 X=1; Y=1; Z=1;

   end

endmodule

/*

   ---- Guia0404-b ----

   b) M (0, 2, 3, 5, 7)
      PoS = 0:

      0 0 0 = 0
      0 0 1 = 1
      0 1 0 = 0
      0 1 1 = 0
      1 0 0 = 1
      1 0 1 = 0
      1 1 0 = 1
      1 1 1 = 0

*/