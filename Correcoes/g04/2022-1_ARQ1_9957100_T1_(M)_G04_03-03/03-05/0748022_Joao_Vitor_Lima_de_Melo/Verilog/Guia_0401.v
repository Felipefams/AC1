// ---------------------
// TRUTH TABLE
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// ---------------------

module fxyz (output s,
input x, y, z);
//(A)
//assign s = x & ~( ~y | ~z );
//(B)
//assign s = ~( ~x | y ) & ~z;
//(C)
//assign s = ~( ~x & y ) & z;
//(D)
//assign s = ~( x & ~y ) & z;
//(E)
assign s = ( x | y ) & ( y | ~z );
endmodule // fxyz

// ---------------------
// -- test_module
// ---------------------
module test_module;
reg x, y, z;
wire s1;
// instancias
fxyz FXYZ1 (s1, x, y, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx; // indefinidos
end

// parte principal
initial begin: main
// identificacao
$display("QUESTÃO 1 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test boolean expression");
//(A)
//$display("\na) x & ~( ~y | ~z )\n");
//(B)
//$display("\nb) ~( ~x | y ) & ~z\n");
//(C)
//$display("\nc) ~( ~x & y ) & z\n");
//(D)
//$display("\nd) ~( x & ~y ) & z\n");
//(E)
$display("\ne) ( x | y ) & ( y | ~z )\n");

// monitoramento
$display(" x  y  z =  s1 s2");
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

end
endmodule // test_module
