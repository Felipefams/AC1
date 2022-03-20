/*
   Arquitetura de Computadores I - Guia_06

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module fxywz (output s, input x, y, w, z);
   assign s = (~x & y & ~w & ~z) | (x & y & w & z) | (~y & w & ~z);
endmodule

// teste
module test_module;

   reg x, y, w, z;
   wire s;

   // instancias
   fxywz FXYWZ (s, x, y, w, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      w = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
      $display("------------- Guia06-08 -------------\n");
   
      $display(" (x'.y.w'.z')+(x.y.w.z)+(y'.w.z') = s\n");
      $monitor("  %b %b %b %b = %b", x, y, w, z, s);
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

   ------------- Guia06-08 -------------

   (x'.y.w'.z')+(x.y.w.z)+(y'.w.z') = s

   0 0 0 0 = 0
   0 0 0 1 = 0
   0 0 1 0 = 1
   0 0 1 1 = 0
   0 1 0 0 = 1
   0 1 0 1 = 0
   0 1 1 0 = 0
   0 1 1 1 = 0
   1 0 0 0 = 0
   1 0 0 1 = 0
   1 0 1 0 = 1
   1 0 1 1 = 0
   1 1 0 0 = 0
   1 1 0 1 = 0
   1 1 1 0 = 0
   1 1 1 1 = 1

*/