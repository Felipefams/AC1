// -------------------------
// Exemplo_0502 - GATES
// Nome: Gabriel Martins Pereira
// Matricula: 733875
// -------------------------

module func ( output s, input a, input b );
	assign s = ~a & b;
endmodule


module Exemplo_0502;
	reg x;
	reg y;
	wire a, b;
	func moduloFunc ( s, x, y );
	initial
		begin : main
			$display("Exemplo_0502 - Gabriel Martins Pereira - 733875");
			$display("~a & b");
			
			$monitor("%4b %4b %4b", x, y, s);
			
			x = 1'b0; y = 1'b0;
			#1 x = 1'b0; y = 1'b1;
			#1 x = 1'b1; y = 1'b0;
			#1 x = 1'b1; y = 1'b1;
	end
endmodule

// iverilog -o Exemplo_0502.vvp Exemplo_0502.v
// vvp Exemplo_0502.vvp