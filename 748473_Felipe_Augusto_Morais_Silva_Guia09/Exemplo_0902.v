// ---------------------------
// -- test clock generator (2)
// ---------------------------
`include "clock.v"
`include "pulse.v"
`include "trigger.v"

module Exemplo_0902;
wire clock;
clock clk ( clock );
reg p;
wire p1,t1;
pulse pulse1 ( p1, clock );
trigger trigger1 ( t1, p, clock );
initial begin
p = 1'b0;
end
initial begin
$dumpfile ( "Exemplo0902.vcd" );
$dumpvars ( 1, clock, p1, p, t1 );
#060 p = 1'b1;
#120 p = 1'b0;
#180 p = 1'b1;
#240 p = 1'b0;
#300 p = 1'b1;
#360 p = 1'b0;
#376 $finish;
end
endmodule // Exemplo_0902
/* Observacoes */
/*GTKWave Analyzer v3.3.111 (w)1999-2020 BSI

[0] start time.
[1636] end time.
o clock e p1 sao constantes
t1 e p sao irregulares
*/