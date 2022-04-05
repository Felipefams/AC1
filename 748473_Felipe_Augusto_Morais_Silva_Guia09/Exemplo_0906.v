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
#3 clk = ~clk;
end
endmodule // clock ( )

module pulse1 ( signal, clock );
input clock;
output signal;
reg
 signal;
always @ ( posedge clock )
begin
signal = 1'b1;
#3 signal = 1'b0;
#3 signal = 1'b1;
#3 signal = 1'b0;
#3 signal = 1'b1;
#3 signal = 1'b0;
end
endmodule // pulse

module Exemplo_0906;
wire clk;
clock CLK1 ( clk );
wire p1;
pulse1 pls1(p1,clk);
initial begin
$dumpfile ( "Exemplo_0906.vcd" );
$dumpvars (1, clk, p1);
#120 $finish;
end
endmodule // Exemplo_0906 ( )
/*observacoes*/
//pulso sincronizado com o clock
//testes feitos usando os divisores de 12 e multiplos de 3
//primeiro usei o 3, depois o 4, depois os 6, 9 e 12 (isso no clock)
