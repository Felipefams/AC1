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
#5 clk = ~clk;
end
endmodule // clock ( )

module pulse1 ( signal, clock );
input clock;
output signal;
reg
 signal;
always @ ( negedge clock )
begin
signal = 1'b1;
#5 signal = 1'b0;
#5 signal = 1'b1;
#5 signal = 1'b0;
#5 signal = 1'b1;
#5 signal = 1'b0;
end
endmodule // pulse

module Exemplo_0907;
wire clk;
clock CLK1 ( clk );
wire p1;
pulse1 pls1(p1,clk);
initial begin
$dumpfile ( "Exemplo_0907.vcd" );
$dumpvars (1, clk, p1);
#120 $finish;
end
endmodule // Exemplo_0906 ( )
/*observacoes*/
//pulso sincronizado com a descida do clock
//mesmos testes do exemplo anterior, mas aqui como eh
//#5 no pulse, fica dessincronizado