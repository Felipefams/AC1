// ---------------------
// TRUTH TABLE
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// ---------------------

module PoS (output S1, input X, input Y, input Z);
assign S1 = ( X | ~Y | ~Z ) & (~X | Y | Z);
endmodule // FXYZ


// ---------------------
// -- test_module
// ---------------------

module test_module;
reg x, y, z;
wire s1;
// instancias

PoS PoS1 (s1, x, y, z);


// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx; // indefinidos
end

// parte principal
initial begin: main
// identificacao
$display("QUESTÃO 6 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test boolean expression");



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



end
endmodule // test_module
