/*
 Euller Magela Nunes Silva - 713924
 Guia_0302
*/
module Guia_0302;
// define data
 reg [5:0] a  = 6'b10_01_11 ; // base 4
 reg [7:0] b  = 8'h6d ;       // base 16
 reg [5:0] c  = 6'b11_10_01 ; // base 4
 reg [6:0] d  = 7'o175 ;      // base 8
 reg [7:0] e  = 8'hf4 ;       // base 16
 
 //C2
 reg [5:0] aa = 0 ;
 reg [7:0] bb = 0 ;
 reg [5:0] cc = 0 ;
 reg [6:0] dd = 0 ;
 reg [7:0] ee = 0 ; 

// actions
 initial
 begin : main
 $display ( "Guia_0302 - Tests" );
 aa = ~a+1;
 $display ( "a = %d%d%d(4) -> C1(a) = %6b -> C2(a) = %6b\n", a[5:4], a[3:2], a[1:0] ~a, aa );
 bb = ~b+1;
 $display ( "b = %2h(16) -> C1(b) = %8b -> C2(b) = %8b", b, ~b, bb );
 cc = ~c+1;
 $display ( "c = %d%d%d(4) -> C1(c) = %6b -> C2(c) = %6b", c[5:4], c[3:2], c[1:0], ~c, cc );
 dd = ~d+1;
 $display ( "d = %3o(8) -> C1(d) = %7b -> C2(d) = %7b", d, ~d, dd );
 ee = ~e+1;
 $display ( "e = %2h(16) -> C1(e) = %8b -> C2(e) = %8b", e, ~e, ee );
end // main
endmodule // Guia_0302
