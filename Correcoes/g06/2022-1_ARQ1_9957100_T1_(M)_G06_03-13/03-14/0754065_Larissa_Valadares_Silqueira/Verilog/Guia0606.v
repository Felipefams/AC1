/*
   Arquitetura de Computadores I - Guia_06

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module fxywz (output s, input X, Y, W, Z);
   assign s = X & (~Y | ~W | ~Z);
endmodule

// teste
module test_module;

   reg X, Y, W, Z;
   wire s;

   // instancias
   fxywz FXYWZ (s, X, Y, W, Z);

   // valores iniciais
   initial begin: start
      
      X = 1'b0;
      Y = 1'b0;
      W = 1'b0;
      Z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("--- Guia06-06 ---\n");
   
      $display(" X.(Y'+W'+Z') = s\n");
      $monitor("  %b %b %b %b = %b", X, Y, W, Z, s);
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

   --- Guia06-06 ---

   X.(Y'+W'+Z') = s

   0 0 0 0 = 0
   0 0 0 1 = 0
   0 0 1 0 = 0
   0 0 1 1 = 0
   0 1 0 0 = 0
   0 1 0 1 = 0
   0 1 1 0 = 0
   0 1 1 1 = 0
   1 0 0 0 = 1
   1 0 0 1 = 1
   1 0 1 0 = 1
   1 0 1 1 = 1
   1 1 0 0 = 1
   1 1 0 1 = 1
   1 1 1 0 = 1
   1 1 1 1 = 0

*/