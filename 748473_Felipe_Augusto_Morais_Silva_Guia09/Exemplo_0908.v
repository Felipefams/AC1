// ---------------------------
// -- test clock generator 
// ---------------------------
//`include "clock.v"
module clock ( output clk );
reg
 clk;
initial
begin
clk = 1'b0;
end
always
begin
#6 clk = ~clk;
end
endmodule // clock ( )

module pulse1 ( signal, clock );
input clock;
output signal;
reg
 signal;
always @ ( clock )
begin
signal = 1'b1;
#6 signal = 1'b0;
#6 signal = 1'b1;
#6 signal = 1'b0;
#6 signal = 1'b1;
#6 signal = 1'b0;
end
endmodule // pulse

module Exemplo_0908;
wire clk;
clock CLK1 ( clk );
wire p1;
pulse1 pls1(p1,clk);
initial begin
$dumpfile ( "Exemplo_0908.vcd" );
$dumpvars (1, clk, p1);
#120 $finish;
end
endmodule // Exemplo_0906 ( )
/*observacoes*/
//pulso sincronizado com o clock estavel
//o estavel nao tem aquele atraso (linha vermelha) no inicio.