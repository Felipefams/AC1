//Code by Felipe Augusto Morais Silva. 
//sera q da pra fazer um parser de expressao logica pra codigo em verilog? to pensando seriamenten nessa hipotese

module f5a ( output s,input x,input y, input z );
// // definir dado local
// wire not_y, not_z, and_1, and_2, or_final;
// // descrever por portas
// not NOT1 ( not_y, y );
// not NOT2 (not_z, z);
// and AND1 (and_1, not_y, x);
// and AND2 (and_2, not_z, x);
// or OR1 (or_final,and_1, and_2);
//aqui vai ser a versao nao otimizada do circuito
assign s =(~(~x | ~y) & ~(x & y)) | ( ~((y & z) | ~x));
endmodule // f5a

module f5b ( output s,input x,input y, input z );
// descrever por expressao
//aqui vai ser a versao otimizada
assign s = (x & ~y) | (x & ~z);
endmodule // f5b
module test_f5;
// ------------------------- definir dados
reg x;
reg y;
reg z;
wire a, b;
f5a moduloA ( a, x, y, z);
f5b moduloB ( b, x, y, z);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0605 -Felipe Augusto Morais Silva - 748473");
$display("Test module");
// projetar testes do modulo
$display("   x    y    z =   r1   r2");
$monitor("%4b %4b %4b = %4b %4b", x, y, z, a, b);
#1 x=1'b0; y=1'b0; z=1'b0;
#1 x=1'b0; y=1'b0; z=1'b1;
#1 x=1'b0; y=1'b1; z=1'b0;
#1 x=1'b0; y=1'b1; z=1'b1;
#1 x=1'b1; y=1'b0; z=1'b0;
#1 x=1'b1; y=1'b0; z=1'b1;
#1 x=1'b1; y=1'b1; z=1'b0;
#1 x=1'b1; y=1'b1; z=1'b1;
end
endmodule // test_f5
