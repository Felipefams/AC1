/* 
Guia_0301
Nome: Barbara Luciano Araujo
Matricula: 748190
*/

module Guia_0301;

//define data
reg [7:0] a = 8'b000_1010; // binary
reg [7:0] b = 8'b000_101;  // binary
reg [7:0] c = 8'b001_01;   // binary
reg [7:0] d = 0;           // binary
reg [7:0] e = 0;           // binary
reg [7:0] f = 0;           // binary

//actions
initial 
begin : main

$display ("\n\nGuia_0301 - Tests");

d = ~a + 1;
$display ("a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, d);

e = ~b + 1;
$display ("b = %7b -> C1(b) = %7b -> C2(b) = %7b", b, ~b, e);

f = ~c + 1;
$display ("c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f);

$display ("\n--------------------------------\n\n");

$display ("Guia_0301 - Exercicios");
$display ("\n     Letra a:\n");

a = 8'b001_011;

$display ("\n\nRESPOSTA: a = %6b -> C1(a) = %6b", a, ~a); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra b:\n");

b = 8'b0000_1010;

$display ("\n\nRESPOSTA: b = %8b -> C1(b) = %8b", b, ~b); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra c:\n");

c = 8'b110_011;
f = ~c + 1;

$display ("\n\nRESPOSTA: c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra d:\n");

d = 8'b001_0111;
f = ~d + 1;

$display ("\n\nRESPOSTA: d = %7b -> C1(d) = %7b -> C2(d) = %7b", d, ~d, f); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra e:\n");

e = 8'b0011_0101;
f = ~e + 1;

$display ("\n\nRESPOSTA: e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, f); // resposta final

$display ("\n--------------------------------\n\n");


end // end main

endmodule // Guia_0301