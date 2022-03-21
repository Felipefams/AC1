// -------------------------
// Exemplo_0704 - GATES
// Nome: Felipe Augusto Morais Silva 
// Matricula: 748473 
// -------------------------
// -------------------------
// !!! essa deu bem errado
module f7 ( output s1, output s2, output s3, output s4, output s5, output s6, output s7, output s8, input a, input b );
not NOT1 (s1, a);
not NOT2 (s2, b);
and AND1 (s3, a, b);
nand NAND1 (s4, a, b);
xor  XOR1  (s4, a, b);
xnor XNOR1 (s5, a, b);
or   OR1   (s6, a, b);
nor  NOR1  (s7, a, b);
endmodule // f7
// -------------------------
// multiplexer with 8 inputs
// -------------------------
// in the last question i should have doubled the select input, i will try it
// in this one rn
module mux (output s, input a, input b, input c, input d, input e, input f, input g, input h, input select1);

wire not_select1;
wire sa;
wire sb;
wire sc;
wire sd;	

not NOT1 (not_select1, select1);
and AND1 (sa, a, not_select1);
and AND2 (sb, b, not_select1);
and AND3 (sc, c, select1);
and AND4 (sd, d, select1);
or  OR1  (s, sa, sb, sc, sd);
endmodule//mux1

module test_f7;
// ------------------------- definir dados
reg x;
reg y;
reg s;
wire s1;
wire s2;
wire s3;
wire s4;
wire mux_out;//multiplex output
f7 modulo ( s1, s2, s3, s4, x, y );
mux MUX1 ( mux_out, s1, s2, s3, s4, s );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0705 - Felipe Augusto Morais Silva - 748473");
$display("Test LU's module");
$display("   x    y    s    s1   s2   s3   s4  ans");
//must define the variables before the first print, otherwise the answer will
//be x x x x ... 
x = 1'b0; y = 1'b0; s = 1'b0;
#1 $monitor("%4b %4b %4b %4b %4b %4b %4b %4b ", x, y, s, s1, s2, s3, s4, mux_out);
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
