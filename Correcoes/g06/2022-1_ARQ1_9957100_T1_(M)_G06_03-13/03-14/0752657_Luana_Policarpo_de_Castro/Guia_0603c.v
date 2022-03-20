// ---------------------
// TRUTH TABLE
// Nome: Luana Policarpo de Castro
// Matricula: 752657
// ---------------------
// ---------------------
// -- expression
// ---------------------
module fxy (output s,
 input x, y, w, z);
assign s = (~x & ~y & ~w) | (~x & ~y & ~z) | (~x & ~w & ~z) 
           | (y & w & z) | (x & w & z) | (~y & ~w & ~z);
endmodule // fxy

// ---------------------
// -- test_module
// ---------------------
module test_module;
reg x, y, w, z;
wire s1;
 // instancias
fxy FXY1 (s1, x, y, w, z);
 // valores iniciais
initial begin: start
 x=1'bx; y=1'bx; w = 1'bx; z = 1'bx; // indefinidos
end

 // parte principal
initial begin: main

 // identificacao
 $display("Guia06 03)c) - Luana Policarpo de Castro - 752657");
 $display("Test boolean expression");
 $display("\n(x'. y'. w') + (x'. y'. z') + (x'. w'. z') + (y . w . z) + (x . w . z) + (y'. w'. z') = s\n");

 // monitoramento
 $display("x y w z = s1");
 $monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s1);

 // sinalizacao
 #1 x=0; y=0; w=0; z=0;
 #1 x=0; y=0; w=0; z=1;
 #1 x=0; y=0; w=1; z=0;
 #1 x=0; y=0; w=1; z=1;
 #1 x=0; y=1; w=0; z=0;
 #1 x=0; y=1; w=0; z=1;
 #1 x=0; y=1; w=1; z=0;
 #1 x=0; y=1; w=1; z=1;
 #1 x=1; y=0; w=0; z=0;
 #1 x=1; y=0; w=0; z=1;
 #1 x=1; y=0; w=1; z=0;
 #1 x=1; y=0; w=1; z=1;
 #1 x=1; y=1; w=0; z=0;
 #1 x=1; y=1; w=0; z=1;
 #1 x=1; y=1; w=1; z=0;
 #1 x=1; y=1; w=1; z=1;
end
endmodule // test_module