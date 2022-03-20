// ---------------------
// TRUTH TABLE
// Nome: Luisa Nogueira Campos Silva Souza 
// Matricula: 747560
// ---------------------
// ---------------------
// -- expression
// ---------------------
module fxyz (output a, output b, output c, output d, output e, input x, y, z);
assign a = x & ~(~y | ~z);
assign b = ~(~x | y) & ~z;
assign c = ~(~x & y) & z;
assign d = ~(x & ~y) & z;
assign e = (x | y) & (y | ~z);

endmodule // fxyz
