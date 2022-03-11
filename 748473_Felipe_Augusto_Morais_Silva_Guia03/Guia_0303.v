/*
Guia_0303
*/
module Guia_0303;
// define data
/* a gente nao pode ignorar o 1 do sinal n? basta eu declarar o 10101 como 0101 pra passar ele pra positivo nao?
 tipo assim: reg unsigned [3:0] a = 8'b0101;
 ah nao, consegui entender agora. 
 */
reg signed [4:0] a = 8'b10101; // vai virar 11 em decimal  
reg signed [5:0] b = 8'b110_111; // vai virar 9 em decimal 
reg signed [5:0] c = 8'b110_010; // vai virar 16 em decimal '0'10_000 em binario (opa, fiz conta errada, da 14, '0'01_110)
reg signed [6:0] d = 8'b1011_101; // binary
reg signed [7:0] e = 8'b1011_0101; // binary
reg signed [7:0] sup = 0;
reg signed [7:0] hexSup = 8'h0;
// actions
initial
begin : main
$display ( "Guia_0303 - Tests" );
//a) 
sup = ~(a-1);
$display ( "A)'1'0101 -> %d", sup);
sup = ~(b-1);
$display ( "B) '1'10111 -> %d", sup);
sup = ~(c-1);
$display ( "C) '1'10010 -> %6b", sup);//eu ate coloquei o numero depois do %, mas como o size do sup ta [7:0], n muda nada
sup = ~(d-1);
$display ( "D) '1'011101 -> %7b", sup);
sup = ~(e-1);
hexSup = ~(e-1);
$display ( "E) '1'011_0101 ->sup: %8b, hexSup:%h", sup, hexSup);
end // main end // main
endmodule // Guia_0303
