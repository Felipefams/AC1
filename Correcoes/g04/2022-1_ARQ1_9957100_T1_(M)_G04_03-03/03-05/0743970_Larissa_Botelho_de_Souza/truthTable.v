// ---------------------
// TRUTH TABLE
// Nome: Larissa Botelho de Souza
// Matricula: 743970
// ---------------------

module fxy(output s, input x,y);

assign s = ~x & y | x & ~y;

endmodule //fxy