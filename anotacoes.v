//o # aqui no verilog significa o tempo de unidade padrao
//entao por exemplo #12 clk; sao 12 unidades padrao, e logo em seguida muda
//o clock
//o clock pode ser sincronizado na subida ou descida. no caso o sinal a ser
//subido eh o puslo. tudo isso ta no arquivo do RRH_009.txt do theldo. Se
//o clock nao subir completamente da problema no pulso. Tem que lembrar que
//o pulso e o clock estao interligados, o pulso pode ser sincronizado com
//a borda de subida ou a borda de descida do clock. 

// um ponto importante a se falar eh que a gente nao precisa informar
// o paremtro detro do parentesis, da pra tratar ele como uma variavel local
// do procedimento ou da funcao
module clock (clk);
output clk;
reg clk;
initial
	begin
	clk = 1'b0;
	end
always 
	begin 
	#12 clk = ~clk;
	end 
endmodule

module testclock01a;
wire clk;
clock CLK1 (clk);
initial begin 
	$dumpfile("testclock01a.vcd");
	$dumpvars;
	#120 $finish;
	end 
endmodule
