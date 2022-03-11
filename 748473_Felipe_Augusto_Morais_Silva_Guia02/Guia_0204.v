/*
Guia_0204
*/
module Guia_0204;
// define data
// define data for problem a)
integer a1 = 1;
integer a2 = 2;
integer a3 = 3;
reg [5:0] aToBin;
//define data for problem b)
integer b = 16'h3C7;
reg [11:0] bToBin;
reg [11:0] binTo4;
//define data for problem c)
reg [8:0] c = 16'o734;
//define data for problem d)
integer d1 = 16'o7;
integer d2 = 16'o510;
reg [3:0] d1To4;
reg [11:0] d2To4;
//define data for problem e)
integer e1 = 16'hA;
integer e2 = 16'hD91;
reg [3:0] e1To4;
reg [11:0] e2To4;
// actions
initial
begin : main
$display ( "Guia_0204 - Tests" );
//==============================problem a
aToBin[1:0] = a1;
aToBin[3:2] = a2;
aToBin[5:4] = a3;
$display("a = 0.%b%b%b", aToBin[5:4], aToBin[3:2], aToBin[1:0]);

//==============================problem b
//dividi em duas partes so pra facilitar o raciocinio, mas dava pra ter feito so com a primeira variavel.
//deixei em forma de comentario ali em baixo
bToBin = b;
binTo4 = bToBin;
// $display("b = 0.%b %b %b", bToBin[11:8], bToBin[7:4], bToBin[3:0]);
//$display("b = 0.%d%d%d%d%d%d", bToBin[11:10], bToBin[9:8], bToBin[7:6], bToBin[5:4], bToBin[3:2], bToBin[1:0]);
$display("b = 0.%d%d%d%d%d%d", binTo4[11:10], binTo4[9:8], binTo4[7:6], binTo4[5:4], binTo4[3:2], binTo4[1:0]);

//==============================problem c
$display ("c = 0.%8b", c );
//==============================problem d
d1To4 = d1;
d2To4 = d2;
/*consegui com o 7, mas esse verilog ta corroendo minha mente
* vou ter que parar pra fazer os trem de aeds que eu nem comecei
* se der tempo eu volto e faco os extras. Pior que isso aqui nao 
* eh tao dificil assim.
*/
$display("d = %d%d.%d%d%d%d%d%d",d1To4[3:2],d1To4[1:0],d2To4[11:10],d2To4[9:8], d2To4[7:6],d2To4[5:4],d2To4[3:2],d2To4[1:0]);

//==============================problem e
e1To4 = e1;
e2To4 = e2;
$display("e = %d%d.%d%d%d%d%d%d",e1To4[3:2],e1To4[1:0], e2To4[11:10], e2To4[9:8], e2To4[7:6], e2To4[5:4], e2To4[3:2], e2To4[1:0]);

end // main
endmodule // Guia_0204
