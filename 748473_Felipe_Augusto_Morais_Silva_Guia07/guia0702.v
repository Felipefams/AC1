// -------------------------
// Exemplo_0702 - GATES
// Nome: Felipe Augusto Morais Silva 
// Matricula: 748473 
// -------------------------
// -------------------------
// f7_gate
// -------------------------
// useful video: https://www.youtube.com/watch?v=HIeQhZ9Gq5s
// a multiplexer has multiple inputs, and a single output, you can choose
// which input goes to your output.
// on the other hand, a demultiplexer is the inverse, alowing a single input
// to have multiple outputs. 
// here we will treat "mux" as a multiplexers and "demux" as Demultiplexer
// multiplexers and demultiplexers often work together.
//
module f7 ( output s1, output s2, input a, input b );
or OR1 (s1, a, b);
nor NOR1 (s2, a, b);
endmodule // f7
// -------------------------
// multiplexer
// -------------------------
module mux ( output s, input a, input b, input select );
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
reg s;
wire s1;
wire s2;
wire mux_out;//multiplex output
f7 modulo ( s1, s2, x, y );
mux MUX1 ( mux_out, s1, s2, s );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0702 - Felipe Augusto Morais Silva - 748473");
$display("Test LU's module");
$display("   x    y    s    s1   s2   ans");
//must define the variables before the first print, otherwise the answer will
//be x x x x ... 
x = 1'b0; y = 1'b0; s = 1'b0;
#1 $monitor("%4b %4b %4b %4b %4b %4b", x, y, s, s1, s2, mux_out);
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
