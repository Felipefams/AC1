/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module PoS (output S, input X, Y, W, Z);
   assign S =
         ( X | Y | W | Z) //0
      & ( X | Y | W | ~Z) //1
      & ( X | Y | ~W | Z) //2
      //& ( X | Y | ~W | ~Z) //3
      & ( X | ~Y | W | Z) //4
      //& ( X | ~Y | W | ~Z) //5
      & ( X | ~Y | ~W | Z) //6
      //& ( X | ~Y | ~W | ~Z) //7
      & ( ~X | Y | W | Z) //8
      //& ( ~X | Y | W | ~Z) //9
      //& ( ~X | Y | ~W | Z) //10
      //& ( ~X | Y | ~W | ~Z) //11
      & ( ~X | ~Y | W | Z) //12
      //& ( ~X | ~Y | W | ~Z) //13
      & ( ~X | ~Y | ~W | Z); //14
      //& ( ~X | ~Y | ~W | ~Z); //15   

endmodule // PoS

// teste
module test_module;

   reg X, Y, W, Z;
   wire S;

   // instancias
   PoS POS (S, X, Y, W, Z);

   // valores iniciais
   initial begin: start
      
      X = 1'b0;
      Y = 1'b0;
      W = 1'b0;
      Z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("--------- Guia0404-c ---------\n");
   
      $display("c) M (0, 1, 2, 4, 6, 8, 12, 14)\n   PoS = 0: \n");
      $monitor("   %b %b %b %b = %b", X, Y, W, Z, S);
      #1 X=0; Y=0; W=0; Z=0;
      #1 X=0; Y=0; W=0; Z=1;
      #1 X=0; Y=0; W=1; Z=0;
      #1 X=0; Y=0; W=1; Z=1;
      #1 X=0; Y=1; W=0; Z=0;
      #1 X=0; Y=1; W=0; Z=1;
      #1 X=0; Y=1; W=1; Z=0;
      #1 X=0; Y=1; W=1; Z=1;
      #1 X=1; Y=0; W=0; Z=0;
      #1 X=1; Y=0; W=0; Z=1;
      #1 X=1; Y=0; W=1; Z=0;
      #1 X=1; Y=0; W=1; Z=1;
      #1 X=1; Y=1; W=0; Z=0;
      #1 X=1; Y=1; W=0; Z=1;
      #1 X=1; Y=1; W=1; Z=0;
      #1 X=1; Y=1; W=1; Z=1;

   end

endmodule

/*

   --------- Guia0404-c ---------

   c) M (0, 1, 2, 4, 6, 8, 12, 14)
      PoS = 0:

      0 0 0 0 = 0
      0 0 0 1 = 0
      0 0 1 0 = 0
      0 0 1 1 = 1
      0 1 0 0 = 0
      0 1 0 1 = 1
      0 1 1 0 = 0
      0 1 1 1 = 1
      1 0 0 0 = 0
      1 0 0 1 = 1
      1 0 1 0 = 1
      1 0 1 1 = 1
      1 1 0 0 = 0
      1 1 0 1 = 1
      1 1 1 0 = 0
      1 1 1 1 = 1

*/