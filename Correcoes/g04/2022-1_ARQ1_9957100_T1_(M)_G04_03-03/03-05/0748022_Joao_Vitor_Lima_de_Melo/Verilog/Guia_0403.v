// ---------------------
// TRUTH TABLE
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// ---------------------

/*//A e B
module SoP (output s1, input x, y, z);
//(A)
//assign s1 = (~x & y & ~z) | (x & ~y & ~z) | (x & y & ~z) | (x & y & z);
//(B) 
assign s1 = (~x & ~y & z) | (~x & y & z) | (x & ~y & ~z) | (x & y & z);
endmodule // SoP */

//C, D e E
module SoP (output s1, input x, y, w, z);
//(C) 
//assign s1 = (~x & ~y & ~w & z ) | (~x & ~y & w & ~z) | (~x & y & ~w & z) | (~x & y & w & ~z) | (x & ~y & ~w & z) | (x & y & ~w & ~z) | (x & y & w & ~z);
//(D) 
//assign s1 = (~x & ~y & ~w & ~z) | (~x & ~y & w & ~z) | (~x & y & w & ~z) | (~x & y & w & z) | (x & ~y & ~w & z) | (x & ~y & w & ~z) | (x & y & ~w & ~z);
//(E) 
assign s1 = (~x & ~y & ~w & z) | (~x & ~y & w & ~z) | (~x & ~y & w & z ) | (~x & y & ~w & z) | (~x & y & w & z) | (x & y & ~w & z);
endmodule // SoP


// ---------------------
// -- test_module
// ---------------------

module test_module;
reg x, y, w, z;
wire s1;
// instancias

//A e B
//SoP SOP1 (s1, x, y, z);
//C, D e E
SoP SOP1 (s1, x, y, w, z);


// valores iniciais
initial begin: start
x=1'bx; y=1'bx; w=1'bx; z=1'bx; // indefinidos
end

// parte principal
initial begin: main
// identificacao
$display("QUESTÃO 3 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test boolean expression");
//(A)
//$display("\na) f (x,y,z) = ∑ m ( 2, 4, 6, 7 )\n");
//(B)
//$display("\nb) f (x,y,z) = ∑ m ( 1, 3, 4, 7 )\n");
//(C)
//$display("\nc) f (x,y,w,z) = ∑ m ( 1, 2, 5, 6, 9, 12, 14 )\n");
//(D)
//$display("\nd) f (x,y,w,z) = ∑ m ( 0, 2, 6, 7, 9, 10, 12 )\n");
//(E)
$display("\ne) f (x,y,w,z) = ∑ m ( 1, 2, 3, 5, 7, 13 )\n");

// monitoramento

//A e B
/*
$display(" x  y  z =  s1");
$monitor("%2b %2b %2b = %2b", x, y, z, s1);
// sinalizacao
#1 x=0; y=0; z=0;
#1 x=0; y=0; z=1;
#1 x=0; y=1; z=0;
#1 x=0; y=1; z=1;
#1 x=1; y=0; z=0;
#1 x=1; y=0; z=1;
#1 x=1; y=1; z=0;
#1 x=1; y=1; z=1;
*/

//C, D e E
$display(" x  y  z =  s1");
$monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s1);

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
