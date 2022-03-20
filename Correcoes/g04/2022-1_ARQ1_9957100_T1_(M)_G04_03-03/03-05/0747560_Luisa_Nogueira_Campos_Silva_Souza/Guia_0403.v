// ---------------------
// Nome: Luisa Nogueira Campos Silva Souza 
// Matricula: 747560
// ---------------------
// ---------------------
// -- expression
// ---------------------
module SoP (output a, output b, output c, output d, output e, input x, y, z);

assign a = (~x & y & ~z) | (x & ~y & ~z) | (x & y & ~z) | (x & y & z);
assign b = (x'& ~y & z) | (~x & y & z) |  (x & ~y & ~z) | (x & y & z);
assign c = (~x & ~y & ~w & z) | (~x & ~y & w & ~z) | (~x & y & ~w & z) | (~x & y & w & ~z) | (x & ~y & ~w & z) | (x & y & ~w & ~z) | (x & y & w & ~z);
assign d = (~x & ~y & ~w & ~z) | (~x & ~y & w & ~z) | (~x & y & w & ~z) | (~x & y & w & z) | (x & ~y & ~w  & z) | (x & ~y & w & ~z) | (x & y & ~w & ~z);
assign e = (~x & ~y & ~w & z) | (~x & ~y & w & ~z) | (~x & ~y & w & z) | (~x & y & ~w & z) | (~x & y & w & z) | (x & y & ~w & z );

endmodule // SoP

