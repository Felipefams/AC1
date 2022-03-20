// ---------------------
// Nome: Luisa Nogueira Campos Silva Souza 
// Matricula: 747560
// ---------------------
// ---------------------
// -- expression
// ---------------------
module fxy (output a, output a2, output b, output b2, output c, output c2, output d, output d2, output e, output e2, input x, y);
assign a = x & ~(~x | ~y);
assign a2 = x & (x & y); // morgan

assign b = (~x | ~y) | (~x & y);
assign b2 = ~(x & y) & (~x | y); // morgan

assign c = ~(~x & ~y) | (~x | ~y);
assign c2 = (x & y) & ~(x | y); // morgan

assign d = ~(x & ~y) | ~(x | ~y) ;
assign d2 = (~x & y) | (~x & y); // morgan

assign e = ~(~y | x) & (~y | x);
assign e2 = (y | ~x) & ~(~y | x); // morgan


endmodule // fxyz