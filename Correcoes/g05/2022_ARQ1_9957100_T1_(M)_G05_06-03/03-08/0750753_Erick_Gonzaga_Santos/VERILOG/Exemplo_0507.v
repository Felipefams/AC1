/*
  750753
  Erick Gonzaga Santos
*/




module f5a (output s, input a, b);

   wire not_b;
   wire not_a;
   wire not_s;

   not NOT1 ( not_a, a );
   not NOT2 ( not_b, b );
   xor XOR1 ( s, a, b );
   
   

endmodule


module f5b (output s, input a, b);

   assign s = a ^ b;

endmodule

module test_f5;

   reg x;
   reg y;
   
   wire s;
   
   f5a moduloA ( s, x, y );
   f5b moduloB ( s, x, y );

   initial begin : main
      $display("-- Guia0506 --\n");
      $display("  a ^ b = s\n\n  a b  s");
      $monitor("  %b %b  %b ", x, y, s);

      x = 1'b0; y = 1'b0;
      #1 x = 1'b0; y = 1'b1;
      #1 x = 1'b1; y = 1'b0;
      #1 x = 1'b1; y = 1'b1;
   
   end

endmodule

