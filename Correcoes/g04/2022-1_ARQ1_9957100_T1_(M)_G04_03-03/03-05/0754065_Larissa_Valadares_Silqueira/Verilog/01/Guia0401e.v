/*
   Arquitetura de Computadores I - Guia_04

   Nome: Larissa Valadares Silqueira
   Matricula: 754065-5
*/

// expressao
module fxyz (output s, input x, y, z); 
   assign s = (x | y) & (y | ~z);
endmodule

// teste
module test_module;

   reg x, y, z;
   wire se;

   // instancias
   fxyz FXYZ (se, x, y, z);

   // valores iniciais
   initial begin: start
      
      x = 1'b0;
      y = 1'b0;
      z = 1'b0;

   end

   // parte principal
   initial begin: main
        $display("---- Guia0401-e ----\n");

        $display("e) (x+y).(y+z') = s\n");
        $monitor("  %2b %2b %2b  = %2b", x, y, z, se);
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

   ---- Guia0401-e ----

   e) (x+y).(y+z') = s

      0  0  0  =  0
      0  0  1  =  0
      0  1  0  =  1
      0  1  1  =  1
      1  0  0  =  1
      1  0  1  =  0
      1  1  0  =  1
      1  1  1  =  1

*/