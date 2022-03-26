// -------------------------
// Exemplo_0801 - FULL ADDER
// Nome: Felipe Augusto Morais Silva 
// Matricula: 748473 
// -------------------------
// -------------------------
// half adder
// -------------------------
module halfAdder (output s,output c,input a,input b);
// descrever por portas
xor XOR1 ( s, a, b ); //sum
and AND1 ( c, a, b ); //carry
endmodule // halfAdder
// -------------------------
// full adder
// -------------------------
module fullAdder ( output sum, output cout, input a, input b, input cin );
// descrever por portas e/ou modulos
//wire x, y ,z;
assign {sum, cout} = a + b + cin; // tentei fazer desse jeito que eu vi na internet mas deu errado
//or or1(count, y, z);
endmodule // fullAdder
// Code your testbench here
module test_fullAdder;
// ------------------------- definir dados
reg [3:0] x;
reg [3:0] y;
wire [3:0] carry; // vai-um
wire [4:0] soma;
// halfAdder HA0 ( carry[0], soma[0], x[0], y[0] );
	fullAdder FA0 ( carry[0], soma[0], x[0], y[0], 1'b0 );
	fullAdder FA1 ( carry[1], soma[1], x[1], y[1], carry[1] );
	fullAdder FA2 ( carry[2], soma[2], x[2], y[2], carry[2] );
	fullAdder FA3 ( soma [4], soma[3], x[3], y[3], carry[3] );
// ------------------------- parte principal
initial begin
$display("Exemplo0801 - Felipe Augusto Morais Silva - 748473");
$display("Test ALU's full adder");
$display(" a    +     B    =   Sum");
$monitor ("%1b%1b%1b%1b   + %1b%1b%1b%1b --> %1b%1b%1b%1b", x[3], x[2], x[1], x[0], y[3], y[2], y[1], y[0], soma[3], soma[2], soma[1], soma[0]);
           x[3] = 1'b0; x[2] = 1'b0; x[1] = 1'b0; x[0] = 1'b0;  y[3] = 1'b0; y[2] = 1'b0; y[1] = 1'b0; y[0] = 1'b0;
		#1 x[3] = 1'b0; x[2] = 1'b0; x[1] = 1'b0; x[0] = 1'b1;  y[3] = 1'b0; y[2] = 1'b0; y[1] = 1'b0; y[0] = 1'b1;
		#1 x[3] = 1'b0; x[2] = 1'b0; x[1] = 1'b1; x[0] = 1'b0;  y[3] = 1'b0; y[2] = 1'b0; y[1] = 1'b1; y[0] = 1'b0;
		#1 x[3] = 1'b0; x[2] = 1'b0; x[1] = 1'b1; x[0] = 1'b1;  y[3] = 1'b0; y[2] = 1'b0; y[1] = 1'b1; y[0] = 1'b1;
		#1 x[3] = 1'b0; x[2] = 1'b1; x[1] = 1'b0; x[0] = 1'b0;  y[3] = 1'b0; y[2] = 1'b1; y[1] = 1'b0; y[0] = 1'b0;
		#1 x[3] = 1'b0; x[2] = 1'b1; x[1] = 1'b0; x[0] = 1'b1;  y[3] = 1'b0; y[2] = 1'b1; y[1] = 1'b0; y[0] = 1'b1;
		#1 x[3] = 1'b0; x[2] = 1'b1; x[1] = 1'b1; x[0] = 1'b0;  y[3] = 1'b0; y[2] = 1'b1; y[1] = 1'b1; y[0] = 1'b0;
		#1 x[3] = 1'b0; x[2] = 1'b1; x[1] = 1'b1; x[0] = 1'b1;  y[3] = 1'b0; y[2] = 1'b1; y[1] = 1'b1; y[0] = 1'b1;
		#1 x[3] = 1'b1; x[2] = 1'b0; x[1] = 1'b0; x[0] = 1'b0;  y[3] = 1'b1; y[2] = 1'b0; y[1] = 1'b0; y[0] = 1'b0;
		#1 x[3] = 1'b1; x[2] = 1'b0; x[1] = 1'b0; x[0] = 1'b1;  y[3] = 1'b1; y[2] = 1'b0; y[1] = 1'b0; y[0] = 1'b1;
		#1 x[3] = 1'b1; x[2] = 1'b0; x[1] = 1'b1; x[0] = 1'b0;  y[3] = 1'b1; y[2] = 1'b0; y[1] = 1'b1; y[0] = 1'b0;
		#1 x[3] = 1'b1; x[2] = 1'b0; x[1] = 1'b1; x[0] = 1'b1;  y[3] = 1'b1; y[2] = 1'b0; y[1] = 1'b1; y[0] = 1'b1;
		#1 x[3] = 1'b1; x[2] = 1'b1; x[1] = 1'b0; x[0] = 1'b0;  y[3] = 1'b1; y[2] = 1'b1; y[1] = 1'b0; y[0] = 1'b0;
		#1 x[3] = 1'b1; x[2] = 1'b1; x[1] = 1'b0; x[0] = 1'b1;  y[3] = 1'b1; y[2] = 1'b1; y[1] = 1'b0; y[0] = 1'b1;
		#1 x[3] = 1'b1; x[2] = 1'b1; x[1] = 1'b1; x[0] = 1'b0;  y[3] = 1'b1; y[2] = 1'b1; y[1] = 1'b1; y[0] = 1'b0;
		#1 x[3] = 1'b1; x[2] = 1'b1; x[1] = 1'b1; x[0] = 1'b1;  y[3] = 1'b1; y[2] = 1'b1; y[1] = 1'b1; y[0] = 1'b1;
		#1 x[3] = 1'b0; x[2] = 1'b1; x[1] = 1'b1; x[0] = 1'b1;  y[3] = 1'b1; y[2] = 1'b0; y[1] = 1'b1; y[0] = 1'b1;
end
endmodule // test_fullAdder

// half-adder test_bench by Md. Nahidul Islam
// module tb_half_adder();
// reg a, b;
// wire s, c;
// half_adder ckt(a,b,s,c);
//initial 
//begin
//	a = 1'b0;
//	b = 1'b0;
//	#100
//	a = 1'b1; 
//	b = 1'b0;
//	#100
//	a = 1'b0; 
//	b = 1'b1;
//	#100
//	a = 1'b1; 
//	b = 1'b1;


//end 
//endmodule 
