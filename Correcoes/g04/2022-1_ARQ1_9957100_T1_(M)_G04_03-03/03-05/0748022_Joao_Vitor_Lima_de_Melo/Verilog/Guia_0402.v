// ---------------------
// TRUTH TABLE
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// ---------------------

module fxyz (output s1, output s2, input x, y, z);
//(A)
assign s1 = x & ~( ~x | ~y );
assign s2 = x & y;

//(B) 
//assign s1 = ( ~x | ~y ) | ( ~x & y);
//assign s2 = ~( x & y ) | ( ~x & y );

//(C) 
//assign s1 = ~( ~x & ~y ) & ( ~x | ~y );
//assign s2 = ( x | y ) & ~( x & y);

//(D) 
//assign s1 = ~( x & ~y ) | ~( x | ~y );
//assign s2 = ( ~x | y ) | ( ~x & y );

//(E) 
//assign s1 = ~( ~y | x ) & ( ~y | x );
//assign s2 = 0;

endmodule // fxyz

// ---------------------
// -- test_module
// ---------------------
module test_module;
reg x, y, z;
wire s1, s2;
// instancias
fxyz FXYZ1 (s1, s2, x, y, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx; // indefinidos
end

// parte principal
initial begin: main
// identificacao
$display("QUESTÃO 2 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test boolean expression");
//(A)
$display("\na) x & ~( ~x | ~y ) = x & y ?\n");
//(B)
//$display("\nb) ( ~x | ~y ) | ( ~x & y) = ~( x & y ) | ( ~x & y ) ?\n");
//(C)
//$display("\nc) ~( ~x & ~y ) & ( ~x | ~y ) = ( x | y ) & ~( x & y) ?\n");
//(D)
//$display("\nd) ~( x & ~y ) | ~( x | ~y ) = ( ~x | y ) | ( ~x & y ) ?\n");
//(E)
//$display("\ne) ~( ~y | x ) & ( ~y | x ) = 0 ?\n");

// monitoramento
$display(" x  y  z =  s1 s2");
$monitor("%2b %2b %2b = %2b %2b", x, y, z, s1, s2);
// sinalizacao
#1 x=0; y=0; z=0;
#1 x=0; y=0; z=1;
#1 x=0; y=1; z=0;
#1 x=0; y=1; z=1;
#1 x=1; y=0; z=0;
#1 x=1; y=0; z=1;
#1 x=1; y=1; z=0;
#1 x=1; y=1; z=1;

end
endmodule // test_module
