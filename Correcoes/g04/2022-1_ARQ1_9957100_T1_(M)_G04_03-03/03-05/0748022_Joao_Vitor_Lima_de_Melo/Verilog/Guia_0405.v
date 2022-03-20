// ---------------------
// TRUTH TABLE
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// ---------------------

/*
//A e B
module PoS (output S, input X, Y);
//a
//assign S = ( X | ~Y );
//b
assign S = ( X | Y ) & ( ~X | Y );
endmodule // PoS
*/

/*
//C e D
module PoS (output S, input X, Y, Z );
// MAXTERMOS
//c
//assign S = ( X | Y | ~Z ) & ( X | ~Y | ~Z ) & ( ~X | Y | ~Z );
//d
assign S = ( ~X | Y | Z ) & ( ~X | Y | ~Z );
endmodule // PoS
*/

//E
module PoS (output S, input X, Y, W, Z );
// MAXTERMOS
//e
assign S = ( X | Y | ~W | Z ) & ( X | ~Y | W | Z ) & ( X | ~Y | ~W | Z ) & ( ~X | Y | W | ~Z ) & ( ~X | Y | ~W | ~Z ) & ( ~X | ~Y | W | Z );
endmodule // PoS


// ---------------------
// -- test_module
// ---------------------

module test_module;
reg x, y, w, z;
wire s1;
// instancias

//A e B
//PoS POS1 (s1, x, y);
//C e D
//PoS POS1 (s1, x, y, z);
//E
PoS POS1 (s1, x, y, w, z);


// valores iniciais
initial begin: start
x=1'bx; y=1'bx; w=1'bx; z=1'bx; // indefinidos
end

// parte principal
initial begin: main
// identificacao
$display("QUESTÃO 5 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test boolean expression");
//(A)
//$display("\na)\n");
//(B)
//$display("\nb)\n");
//(C)
//$display("\nc)\n");
//(D)
//$display("\nd)\n");
//(E)
$display("\ne)\n");

// monitoramento

//A e B

//$display(" x  y  z =  s1");
//$monitor("%2b %2b = %2b", x, y, s1);

//C e D
//$display(" x  y  z =  s1");
//$monitor("%2b %2b %2b = %2b", x, y, z, s1);

/*
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


//E

$display(" x  y  w  z =  s1");
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
