`include "flipflops.v"

module reg_esq5 (output[4:0] s, input in, input clk, input clr);
	wire[1:0] qnot;
    DFF d1(s[0], qnot[0], qnot[1], clk, 1'b0,  clr);
    DFF d2(s[1], qnot[0], s[0], clk,  clr, 1'b0);
    DFF d3(s[2], qnot[0], s[1], clk,  clr, 1'b0);
    DFF d4(s[3], qnot[0], s[2], clk,  clr, 1'b0);
    DFF d5(s[4], qnot[0], s[3], clk,  clr, 1'b0);
endmodule 

module Guia04;
reg clr, clk, x;
wire[4:0] s;
reg_esq5 reg1 (s, x, clk, clr);
integer i = 0;
initial
	begin : main
		$display ("Time");
		clk = 0;
		clr = 0;
		x = 0;
		$monitor ("%2d  - %4b %5b %4b %7b", $time, clk, clr, x, s);
		while(i < 20)
		begin
			if(i % 2 == 0)
				begin
				#1 clk = 1'b1;
				end
			else
				begin
				#1 clk = 1'b0;
				end	
			i++;
		end
	end
endmodule