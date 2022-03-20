// ---------------------
// TRUTH TABLE
// Nome: JOAO VITOR LIMA DE MELO
// Matricula: 748022
// ---------------------

//A e B
module PoS (output S, input X, Y, Z);
//a
assign S = (X | ~Y | Z) & (X | ~Y | ~Z) & (~X | ~Y | Z) & ( ~X | ~Y | ~Z);
//b
//assign S = (X | Y | Z) & (X | ~Y | Z ) & (X | ~Y | ~Z) & (~X | Y | ~Z) & (~X | ~Y | ~Z);
endmodule // PoS

/*
//C, D e E
module PoS (output S, input X, Y, W, Z );
// MAXTERMOS
//c
//assign S = ( X | Y | W | Z ) & ( X | Y | W | ~Z ) & ( X | Y | ~W | Z ) & ( X | ~Y | W | Z ) & ( X | ~Y | ~W | Z ) & ( ~X | Y | W | Z ) & ( ~X | ~Y | W | Z ) & ( ~X | ~Y | ~W | Z ) ;
//d
//assign S = ( X | Y | W | Z ) & ( X | Y | ~W | Z ) & ( X | ~Y | W | Z ) & ( X | ~Y | ~W | Z ) & ( ~X | Y | W | ~Z ) & ( ~X | Y | ~W | Z ) & ( ~X | ~Y | W | ~Z ) ;
//e
//assign S = ( X | Y | W | Z ) & ( X | Y | W | ~Z ) & ( X | Y | ~W | Z ) & ( X | Y | ~W | ~Z ) & ( X | ~Y | ~W | Z ) & ( ~X | Y | ~W | ~Z ) & ( ~X | ~Y | ~W | Z );
endmodule // PoS
*/
// ---------------------
// -- test_module
// ---------------------

module test_module;
reg x, y, w, z;
wire s1;
// instancias

//A e B
PoS POS1 (s1, x, y, z);
//C, D e E
//PoS POS1 (s1, x, y, w, z);


// valores iniciais
initial begin: start
x=1'bx; y=1'bx; w=1'bx; z=1'bx; // indefinidos
end

// parte principal
initial begin: main
// identificacao
$display("QUESTÃO 4 - JOAO VITOR LIMA DE MELO - 748022");
$display("Test boolean expression");
//(A)
$display("\na) F (X,Y,Z) = π M ( 2, 3, 6, 7 ) = PoS ( 2, 3, 6, 7 ) = 0\n");
//(B)
//$display("\nb) F (X,Y,Z) = π M ( 0, 2, 3, 5, 7 ) = PoS ( 0, 2, 3, 5, 7 ) = 0\n");
//(C)
//$display("\nc) F (X,Y,W,Z) = π M ( 0, 1, 2, 4, 6, 8, 12, 14 ) = PoS ( 0, 1, 2, 4, 6, 8, 12, 14 ) = 0\n");
//(D)
//$display("\nd) F (X,Y,W,Z) = π M ( 0, 2, 4, 6, 9, 10, 13 ) = PoS ( 0, 2, 4, 6, 9, 10, 13 ) = 0\n");
//(E)
//$display("\ne) F (X,Y,W,Z) = π M ( 0, 1, 2, 3, 6, 11, 14 ) = PoS ( 0, 1, 2, 3, 6, 11, 14 ) = 0\n");

// monitoramento

//A e B

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


//C, D e E
/*
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
*/
end
endmodule // test_module
