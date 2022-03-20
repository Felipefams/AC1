/*
 Euller Magela Nunes Silva - 713924
 Guia_0303
*/
module Guia_0303;
// define data
  reg signed [4:0] a = 5'b10101    ; // binary
  reg signed [5:0] b = 6'b110111   ; // binary
  reg signed [5:0] c = 6'b110010   ; // binary
  reg signed [6:0] d = 7'b1011101  ; // binary
  reg signed [7:0] e = 8'b10110101 ; // binary
  reg signed [7:0] f = 0; // binary
  reg signed [6:0] g = 0; //binary
// actions
initial
 begin : main
 $display ( "Guia_0303 - Tests" );
 f = ~a+1;
 g = ~(a-1);
 $display ( "a = %5b -> C1(a) = %5b -> C2(a) = %5b = %d = %d", a, ~a, f, f, g );
 f = ~b+1;
 g = ~(b-1);
 $display ( "b = %6b -> C1(b) = %6b -> C2(b) = %6b = %d = %d", b, ~b, f, f, g );
 f = ~c+1;
 g = ~(c-1);
 $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", c, ~c, f, f, g );
 f = ~d+1;
 g = ~(d-1);
 $display ( "d = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", d, ~d, f, f, g );
 f = ~e+1;
 g = ~(e-1);
 $display ( "e = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", e, ~e, f, f, g );
 end // main end // main
endmodule // Guia_0303
