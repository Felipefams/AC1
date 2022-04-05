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
#4 clk = ~clk;
end
endmodule // clock ( )
module Exemplo_0904;
wire clk;
clock CLK1 ( clk );
initial begin
$dumpfile ( "Exemplo_0904.vcd" );
$dumpvars;
#120 $finish;
end
endmodule // Exemplo_0904 ( )
/*observacoes*/
//pulso a cada 4 segundos, a questao 1 pulsa de 12 em 12 segundos