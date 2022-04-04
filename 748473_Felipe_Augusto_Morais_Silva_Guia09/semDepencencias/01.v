//748473 - Felipe Augusto Morais Silva
/*01.) Projetar e descrever em Verilog um módulo
gerador de clock.
O nome do arquivo deverá ser Exemplo_0901.v,
e poderá seguir o modelo descrito abaixo.
Incluir previsão de testes e verificação da
carta de tempo usando GTKWave.*/
// ---------------------------
// -- test clock generator (1)
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
#12 clk = ~clk;
end
endmodule // clock ( )
module Exemplo_0901;
wire clk;
clock CLK1 ( clk );
initial begin
$dumpfile ( "Exemplo_0901.vcd" );
$dumpvars;
#120 $finish;
end
endmodule // Exemplo_0901 ( )