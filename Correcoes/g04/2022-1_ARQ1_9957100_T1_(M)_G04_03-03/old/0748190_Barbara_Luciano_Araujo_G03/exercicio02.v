/* 
Guia_0302
Nome: Barbara Luciano Araujo
Matricula: 748190
*/

module Guia_0302;

//define data
reg [7:0] a = 8'h0a; // hexadecimal
reg [7:0] b = 8'o15; // octal
reg [7:0] c = 13;    // decimal
reg [7:0] d = 0;     // binary
reg [7:0] e = 0;     // binary
reg [7:0] f = 0;     // binary

//actions
initial 
begin : main

$display ("\n\nGuia_0302 - Tests");

d = ~a + 1;
$display ("a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, d);

e = ~b + 1;
$display ("b = %7b -> C1(b) = %7b -> C2(b) = %7b", b, ~b, e);

f = ~c + 1;
$display ("c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f);

$display ("\n--------------------------------\n\n");

$display ("Guia_0302 - Exercicios");
$display ("\n     Letra a:\n");

a = 8'b100_111;

$display ("\n\nRESPOSTA: a = %6b -> C1(a) = %6b", a, ~a); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra b:\n");

b = 8'h6d;

$display ("\n\nRESPOSTA: b = %8b -> C1(b) = %8b", b, ~b); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra c:\n");

c = 8'b111_001;
f = ~c + 1;

$display ("\n\nRESPOSTA: c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra d:\n");

d = 8'o175;
f = ~d + 1;

$display ("\n\nRESPOSTA: d = %7b -> C1(d) = %7b -> C2(d) = %7b", d, ~d, f); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra e:\n");

e = 8'hf4;
f = ~e + 1;

$display ("\n\nRESPOSTA: e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, f); // resposta final

$display ("\n--------------------------------\n\n");


end // end main

endmodule // Guia_0302