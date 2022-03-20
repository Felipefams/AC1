// -------------------------
// exercicio 6
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
// descrever por portas

nor NOT1 ( not_a, a );
nor NOT1 ( not_b, b );

nor Nand1(x,a,b);

nor NAND2(l,not_a,not_b);

nor NAND3(y,l,x);

nor NAND3(s,y);


endmodule // f5a




// -------------------------
module f5b ( output s,         //jeito B
input a,
input b );
// descrever por expressao
assign s = ~(a^b);


endmodule // f5b







//RESULTADO//

module Exemplo_0507;
// ------------------------- definir dados
reg x;
reg y;
wire a, b;

f5a moduloA ( a, x, y );    //jeito 1
f5b moduloB ( b, x, y );    //jeito 2
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0507 - Bruno Mello Couto - 00683618");
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
