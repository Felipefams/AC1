/* 
Guia_0303
Nome: Barbara Luciano Araujo
Matricula: 748190
*/

module Guia_0303;

//define data
reg signed [7:0] a = 8'b1111_1010; // binary
reg signed [6:0] b = 8'b1111_101;  // binary
reg signed [5:0] c = 8'b1111_10;   // binary
reg signed [7:0] d = 0;            // binary
reg signed [6:0] e = 0;            // binary
reg signed [7:0] f = 0;            // binary
reg signed [6:0] g = 0;            // binary

//actions
initial 
begin : main

$display ("\n\nGuia_0303 - Tests");

d = ~a + 1;
e = ~(a-1);

$display ("a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, d, d, e);

d = ~b + 1;
e = ~(b-1);

$display ("b = %8b -> C1(b) = %8b -> C2(b) = %8b = %d = %d", b, ~b, d, d, e);

d = ~c + 1;
e = ~(c-1);

$display ("c = %8b -> C1(c) = %8b -> C2(c) = %8b = %d = %d", c, ~c, d, d, e);

$display ("\n--------------------------------\n\n");

$display ("Guia_0303 - Exercicios");
$display ("\n     Letra a:\n");

a = 8'b1_0101;
f = ~a + 1;
g = ~(a-1);

$display ("\n\nRESPOSTA: a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, f, f, g); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra b:\n");

b = 8'b1_10111;
f = ~b + 1;
g = ~(b-1);

$display ("\n\nRESPOSTA: b = %8b -> C1(b) = %8b -> C2(b) = %8b = %d = %d", b, ~b, f, f, g); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra c:\n");

c = 8'b1_10010;
f = ~c + 1;

$display ("\n\nRESPOSTA: c = %8b -> C1(c) = %8b -> C2(c) = %8b", c, ~c, f); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra d:\n");

d = 8'b1_011101;
f = ~d + 1;

$display ("\n\nRESPOSTA: d = %8b -> C1(d) = %8b -> C2(d) = %8b", d, ~d, f); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra e:\n");

e = 8'b1_0110101;
f = ~e + 1;
g = ~(e-1);

$display ("\n\nRESPOSTA: e = %8b -> C1(e) = %8b -> C2(e) = %8b = %d = %x", e, ~e, f, f, g); // resposta final

$display ("\n--------------------------------\n\n");


end // end main

endmodule // Guia_0303