// ---------------------
// Nome: Luisa Nogueira Campos Silva Souza 
// Matricula: 747560
// ---------------------
// ---------------------
// -- expression
// ---------------------
module PoS (output a, output b, output c, output d, output e, input x, y, z);

assign a = (X | ~Y | Z) & (X | ~Y | ~Z) & (~X | ~Y | Z) & (~X | ~Y | ~Z);
assign b = (X | Y | Z) & (X | ~Y | Z) & (X | ~Y | ~Z) & (~X | Y | ~Z) & (~X | ~Y | ~Z);
assign c = (X | Y | W | Z) & (X | Y | W | ~Z) & (X | Y | ~W | Z) & (X | ~Y | W | Z) & (X | ~Y | ~W | Z) & (~X | Y | W | Z) & (~X | ~Y | W | Z) & (~X | ~Y | ~W | Z);
assign d = (X | Y | W | Z) & (X | Y | ~W | Z) & (X | ~Y | W | Z) & (X | ~Y | ~W | Z) & (~X | Y | W | ~Z) & (~X | Y | ~W | Z) & (~X | ~Y | W | ~Z);
assign e = (X | Y | W | Z) & (X | Y | W | ~Z) & (X | Y | ~W | Z) & (X | Y | ~W | ~Z) . (X | ~Y | ~W | Z) & (~X | Y | ~W | ~Z) & (~X | ~Y | ~W | Z);

endmodule // PoS