/*
   Guia_0301
   Euller Magela Nunes Silva - 7139224
*/

module Guia_0301;
// define data
 reg [5:0] a  = 8'b0000_1011 ; // binary
 reg [7:0] b  = 8'b0000_1010 ; // binary
 reg [5:0] c  = 8'b00_110011 ; // binary
 reg [6:0] d  = 8'b000_10111 ; // binary
 reg [7:0] e  = 8'b00_110101 ; // binary
 reg [5:0] aa = 0 ; 
 reg [7:0] bb = 0 ;
 reg [5:0] cc = 0 ;
 reg [6:0] dd = 0 ;
 reg [7:0] ee = 0 ;

// actions
 initial
 begin : main
 $display ( "Guia_0301 - Tests" );
 aa = ~a+1;
 $display ( "a = %6b -> C1(a) = %6b -> C2(a) = %6b\n", a, ~a, aa);
 bb = ~b+1;
 $display ( "b = %8b -> C1(b) = %8b -> C2(b) = %8b\n", b, ~b, bb );
 cc = ~c+1;
 $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b\n", c, ~c, cc );
 dd = ~d+1;
 $display ( "d = %7b -> C1(b) = %7b -> C2(b) = %7b\n", d, ~d, dd );
 ee = ~e+1;
 $display ( "c = %8b -> C1(c) = %8b -> C2(c) = %8b\n", e, ~e, ee );
 end // main
endmodule // Guia_0301
