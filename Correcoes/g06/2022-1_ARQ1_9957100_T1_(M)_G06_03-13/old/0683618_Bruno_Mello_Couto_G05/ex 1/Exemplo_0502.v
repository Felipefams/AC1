// -------------------------
// exercicio 1
// Nome: Bruno Mello Couto
// Matricula: 00683618
// -------------------------
// -------------------------
// -------------------------
module f5a ( output s,        //jeito A
input a,
input b );
// definir dado local
wire not_a;
wire not_b;
// descrever por portas
nand NOT1 ( not_a, a );

nand  NOT2( nand_a, not_a, b );
nand  NAND1( s, nand_a );

endmodule // f5a




// -------------------------
module f5b ( output s,         //jeito B
input a,
input b );
// descrever por expressao
assign s = (~a & b);
endmodule // f5b





//RESULTADO//

module test_f5;
// ------------------------- definir dados
reg x;
reg y;
wire a, b;

f5a moduloA ( a, x, y );    //jeito 1
f5b moduloB ( b, x, y );    //jeito 2
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0502 - Bruno Mello Couto - 00683618");
$display("Test module");
$display("   x    y    a    b");
// projetar testes do modulo
$monitor("%4b %4b %4b %4b", x, y, a, b);
x = 1'b0; y = 1'b0;
#1
x = 1'b0; y = 1'b1;
#1
x = 1'b1; y = 1'b0;
#1
x = 1'b1; y = 1'b1;
end
endmodule // test_f5
