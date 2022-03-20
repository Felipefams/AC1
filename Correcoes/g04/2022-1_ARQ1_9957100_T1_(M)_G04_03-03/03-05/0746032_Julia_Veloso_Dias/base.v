// ---------------------
// TRUTH TABLE
// Nome: JULIA VELOSO DIAS
// Matricula: 1314675
// ---------------------
// ---------------------
// -- expression
// ---------------------
module fxy (output s,
 input x, y);

assign s = ~x & y | x & ~y;

endmodule // fxy


// ---------------------
// TRUTH TABLE
// Nome: JULIA VELOSO DIAS
// Matricula: 1314675
// ---------------------
/ ---------------------
// -- SoP
// ---------------------
module SoP (output s,
 input x, y);

 // mintermos

assign s = ( ~x & y ) // 1
 | ( x & ~y ); // 2

endmodule // SoP


// ---------------------
// TRUTH TABLE
// Nome: JULIA VELOSO DIAS
// Matricula: 1314675
// ---------------------
// ---------------------
// -- PoS
// ---------------------
module PoS (output S,
 input X, Y);
 
 // MAXTERMOS 

assign S = ( X | Y ) // 0
 & ( ~X | ~Y ); // 3
 
endmodule // PoS
