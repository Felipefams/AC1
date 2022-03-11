/*
Guia_0302
*/
module Guia_0302;
// define data
/* eu fiquei de te perguntar tambem, mas acabei esquecendo, qual a utilidade da base 4? 
 * eu n consegui pensar em nada que use a base 4 no nosso dia-a-dia. 
*/ 
// data a)
reg [1:0] a0 = 2;
reg [1:0] a1 = 1;
reg [1:0] a2 = 3; 
// data b)
reg [7:0] b = 8'h6d;
//data c)
reg [5:0] c = 8'b111001;// eu ia fazer a conversao pelo proprio verilog, so que na hora de somar 1 ia dar problema
reg [5:0] sup_c = 0;
//data d) 
reg [6:0] d = 8'o175;
reg [6:0] sup_d = 0;
//data e)
reg [7:0] e = 8'hf4;
reg [7:0] sup_e = 0;
// actions
initial
begin : main
$display ( "Guia_0302 - Tests" );
//a) 
$display ( " a) C1,6 (213(4)) = %2b%2b%2b ", ~a0, ~a1, ~a2);
//b)
$display ( " b) C1,8 (6D(16)) = %8b", ~b);
//c)
sup_c = ~c + 1;
$display ( " c) C2,6 (321(4)) = %6b", sup_c);
//d) 
sup_d = ~d + 1;
$display ( " d) C2,7 (175(8) = %7b", sup_d);
//e) 
sup_e = ~e + 1;
$display ( " e) C2,8 (f4(16)) = %8b", sup_e);
end // main
endmodule // Guia_0302
