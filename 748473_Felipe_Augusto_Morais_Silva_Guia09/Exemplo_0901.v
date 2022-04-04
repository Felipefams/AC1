// 748473 - Felipe Augusto Morais Silva
// ---------------------------
// -- test clock generator (1)
// ---------------------------
`include "clock.v"

module Exemplo_0901;
wire clk;
clock CLK1 ( clk );
initial begin
$dumpfile ( "Exemplo_0901.vcd" );
$dumpvars;
#120 $finish;
end
endmodule // Exemplo_0901 ( )
/*observacoes*/
//o clock (clk) pulsa de 12 em 12 segundos.