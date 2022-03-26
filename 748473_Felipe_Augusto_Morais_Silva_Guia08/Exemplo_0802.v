// -------------------------
// Exemplo_0801 - FULL ADDER
// Nome: xxx yyy zzz
// Matricula: 999999
// -------------------------
// -------------------------
// half adder
// -------------------------
module halfAdder (output s1, output s0, input a, input b);
// descrever por portas
xor XOR1 ( s0, a, b );
and AND1 ( s1, a, b );
endmodule // halfAdder
// -------------------------
// full adder
// -------------------------
module fullAdder ( output s1, output s0, input a, input b, input carryIn );
// descrever por portas e/ou modulos
// (valores arbitrarios escolhidos apenas para exemplo)
not NOT1 ( s1, a ); // valor arbitrario
not NOT2 ( s0, b ); // valor arbitrario
endmodule // fullAdder
module test_fullAdder;
// ------------------------- definir dados
reg [3:0] x;
reg [3:0] y;
wire [3:0] carry; //vai-um
wire [4:0] soma;
// halfAdder HA0 ( carry[0], soma[0], x[0], y[0] );
fullAdder FA0 ( carry[0], soma[0], x[0], y[0], 1'b0 );
// ------------------------- parte principal
initial begin
$display("Exemplo0802 - Felipe Augusto Morais Silva- 748473");
$display("Test ALU's full adder");
// projetar testes do somador completo
end
endmodule // test_fullAdder
