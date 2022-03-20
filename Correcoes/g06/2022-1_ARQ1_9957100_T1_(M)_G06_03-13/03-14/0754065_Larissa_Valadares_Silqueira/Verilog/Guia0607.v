/*
   Arquitetura de Computadores I - Guia_06

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module fxyz (output s, input X, Y, Z);
   assign s = (~X | Y | Z) & (X | ~Y);
endmodule

// teste
module test_module;

   reg X, Y, Z;
   wire s;

   // instancias
   fxyz FXYZ (s, X, Y, Z);

   // valores iniciais
   initial begin: start
      
      X = 1'b0;
      Y = 1'b0;
      Z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("----- Guia06-07 -----\n");
   
      $display(" (X'+Y+Z).(X+Y') = s\n");
      $monitor("  %b %b %b = %b", X, Y, Z, s);
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

   ----- Guia06-07 -----

   (X'+Y+Z).(X+Y') = s

   0 0 0 = 1
   0 0 1 = 1
   0 1 0 = 0
   0 1 1 = 0
   1 0 0 = 0
   1 0 1 = 1
   1 1 0 = 1
   1 1 1 = 1

*/