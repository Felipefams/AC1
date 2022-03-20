/*
   Arquitetura de Computadores I - Guia_06

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module fxyz (output s, input x, y, z);
   assign s = (x & ~y) | (x & ~z);
endmodule

// teste
module test_module;

   reg x, y, z;
   wire s;

   // instancias
   fxyz FXYZ (s, x, y, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("--- Guia06-05 ---\n");
   
      $display(" x.y' + x.z' = s\n");
      $monitor("  %b %b %b = %b", x, y, z, s);
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

   --- Guia06-05 ---

   x.y' + x.z' = s

   0 0 0 = 0
   0 0 1 = 0
   0 1 0 = 0
   0 1 1 = 0
   1 0 0 = 1
   1 0 1 = 1
   1 1 0 = 1
   1 1 1 = 0

*/