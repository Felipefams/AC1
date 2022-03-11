/*
Guia_0301
*/
module Guia_0301;
/*
C1,6 significa, 5 bits + 1 bit do negativo
*/ 
//foram adicionados 2 zeros a esquerda, 1 para mudar o sinal e outro para inteirar 6 bits;	
//data a)
reg [5:0] a = 8'b001011;
reg [5:0] sup_a = 0;
//data b)
reg [7:0] b = 8'b0000_1010;
reg [7:0] sup_b = 0;
//data c)
reg [5:0] c = 8'b110_011; //daqui pra baixo vai ter que somar 1, pq eh complemento de 2
reg [5:0] sup_c = 0;
//data d)
reg [6:0] d = 8'b0010111;
reg [6:0] sup_d = 0;
//data e)
reg [7:0] e = 8'b0011_0101;
reg [7:0] sup_e = 0;
// actions
initial
begin : main
$display ( "Guia_0301 - Tests" );
//nesse caso, fizemos o complemento de 1, como ja tinha o 0 do sinal, o numero vai passar pra negativo
sup_a = ~a;//~a + 1 seria o complemento de 2.
$display ( "A) C1,6(1011) = %6b", sup_a);
sup_b = ~b;
$display ( "B) C1,8(1010) = %8b", sup_b);
sup_c = ~c + 1; 
$display ( "C) C2,6(110011) = %6b", sup_c);
sup_d = ~d + 1;
$display ( "D) C2,7(10111) = %7b", sup_d);
sup_e = ~e + 1;
$display ( "E) C2,8(110101) = %8b", sup_e);
end // main
endmodule // Guia_0301
