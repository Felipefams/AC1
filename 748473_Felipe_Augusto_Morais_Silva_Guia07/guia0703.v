// -------------------------
// Exemplo_0703 - GATES
// Nome: Felipe Augusto Morais Silva 
// Matricula: 748473 
// -------------------------
// -------------------------
// f7a_gate
// -------------------------
module f7a ( output s1, output s2, input a, input b );
and AND1 (s1, a, b);
nand NAND1 (s2, a, b);
endmodule // f7
// -------------------------
// f7b_gate
// -------------------------
module f7b ( output s1, output s2, input a, input b );
or OR1 (s1, a, b);
nor NOR1 (s2, a, b);
endmodule // f7

// -------------------------
// multiplexer 2
// -------------------------
module mux1 ( output s, input a, input b, input select );
// definir dados locais
wire not_select;
wire sa;
wire sb;
// descrever por portas
not NOT1 ( not_select, select );
and AND1 ( sa, a, not_select );
and AND2 ( sb, b, select );
or OR1 ( s , sa, sb );
endmodule // mux
// -------------------------
// multiplexer 2 
// -------------------------
module mux2 ( output s, input a, input b, input select );
// definir dados locais
wire not_select;
wire sa;
wire sb;
// descrever por portas
not NOT1 ( not_select, select );
and AND1 ( sa, a, not_select );
and AND2 ( sb, b, select );
or OR1 ( s , sa, sb );
endmodule // mux
// -------------------------
// multiplexer 3 
// -------------------------
module mux3 ( output s, input a, input b, input select );
// definir dados locais
wire not_select;
wire sa;
wire sb;
// descrever por portas
not NOT1 ( not_select, select );
and AND1 ( sa, a, not_select );
and AND2 ( sb, b, select );
or OR1 ( s , sa, sb );
endmodule // mux

module test_f7;
// ------------------------- definir dados
reg x;
reg y;
reg s;// i will connect everything on this wire so i don't need to make a test for each possibilities of the 3 different wires
wire s1;
wire s2;
wire s3;
wire s4;
wire mux_out1;//multiplex output
wire mux_out2;
wire mux_out3;
f7a modulo_a ( s1, s2, x, y );
f7b modulo_b ( s3, s4, x, y );
mux1 MUX1 ( mux_out1, s1, s2, s );
mux2 MUX2 ( mux_out2, s3, s4, s );
mux3 MUX3 ( mux_out3, mux_out1, mux_out2, s);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0703 - Felipe Augusto Morais Silva - 748473");
$display("Test LU's module");
$display("   x    y    s    s1   s2   s3   s4  out1	out2 ans");
//must define the variables before the first print, otherwise the answer will
//be x x x x ... 
x = 1'b0; y = 1'b0; s = 1'b0;
#1 $monitor("%4b %4b %4b %4b %4b %4b %4b %4b %4b %4b", x, y, s, s1, s2, s3, s4, mux_out1, mux_out2, mux_out3);
//here we will shift the values of x and y depending on the multiplexer s 
//when s == 0
//#1 	 s = 1'b0;
//#1   x = 1'b0;  y =  1'b0;
#1   x = 1'b0;  y =  1'b1;
#1   x = 1'b1;  y =  1'b0;
#1   x = 1'b1;  y =  1'b1;
//when s = 1
//it will print X = 1, Y = 1; 2 times, idk why tho.
#1 	 s = 1'b1;
#1   x = 1'b0;  y =  1'b0;
#1   x = 1'b0;  y =  1'b1;
#1   x = 1'b1;  y =  1'b0;
#1   x = 1'b1;  y =  1'b1;

end
endmodule // test_f7
