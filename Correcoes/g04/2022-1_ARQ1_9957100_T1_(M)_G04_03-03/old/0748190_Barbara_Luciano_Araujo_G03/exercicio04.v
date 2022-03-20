/* 
Guia_0304
Nome: Barbara Luciano Araujo
Matricula: 748190
*/

module Guia_0304;

//define data
reg signed [7:0] a = 8'b1111_1010; // binary
reg signed [6:0] b = 8'b1111_101;  // binary
reg signed [5:0] c = 8'b1111_10;   // binary
reg signed [7:0] d = 0;            // binary
reg signed [15:0] e = 0;            // binary
reg signed [15:0] f = 0;            // binary
reg signed [15:0] g = 0;            // binary

//actions
initial 
begin : main

$display ("\n\nGuia_0304 - Tests");
$display ("a = %8b = %d", a, a);
$display ("b = %8b = %d", b, b);
$display ("c = %8b = %d", c, c);

d = a - b;
$display ("d = a - b = %8b - %8b = %8b = %d", a, b, d, d);

d = b - a;
$display ("d = b - a = %8b - %8b = %8b = %d", b, a, d, d);

d = a - c;
$display ("d = a - c = %8b - %8b = %8b = %d", a, c, d, d);

d = c - a;
$display ("d = c - a = %8b - %8b = %8b = %d", c, a, d, d);

$display ("\n--------------------------------\n\n");

$display ("Guia_0304 - Exercicios");
$display ("\n     Letra a:\n");

a = 8'b11100;
b = 8'b1101;

d = a - b;

$display ("\n\nRESPOSTA: d = a - b = %8b - %8b = %8b = %d", a, b, d, d); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra b:\n");

a = 8'b0101_1001;
b = 8'b0010_0100;

d = a - b;

$display ("\n\nRESPOSTA: d = a - b = %4b.%4b - %4b.%4b = %4b.%4b", a[7:3], a[2:0], b[7:3], b[2:0], d[7:3], d[2:0]); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra c:\n");

a = 8'b100111;
b = 8'b011011;

d = a - b;

$display ("\n\nRESPOSTA: d = a - b = %8b - %8b = %8b = %d", a, b, d, d); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra d:\n");

a = 8'b1100_1010;
b = 8'b0101_0011;

d = a - b;

$display ("\n\nRESPOSTA: d = a - b = %8b - %8b = %8b = %o", a, b, d, d); // resposta final

$display ("\n--------------------------------\n\n");

$display ("\n     Letra e:\n");

e = 16'b1001_1101_0001;
f = 16'b1010_0001_1011;

g = e - f;

$display ("\n\nRESPOSTA: g = e - g = %8b - %8b = %8b = %x", e, f, g, g); // resposta final

$display ("\n--------------------------------\n\n");


end // end main

endmodule // Guia_0304