// ---------------------------
// -- test clock generator 
// ---------------------------
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
module Exemplo_0905;
wire clk;
clock CLK1 ( clk );
initial begin
$dumpfile ( "Exemplo_0905.vcd" );
$dumpvars;
#120 $finish;
end
endmodule // Exemplo_0905 ( )
/*observacoes*/
//pulso a cada 3 segundos, a questao 1 pulsa de 12 em 12 segundos