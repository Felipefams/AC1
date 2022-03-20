/*
Pedro Correa Rigotto - Matricula 762281
guia0401c
*/

// letra c

module fxyzc (output s, input x, y, z);
	assign s = ~(~x&y)&z;
endmodule // fxyzc

module letraC;
	reg x, y, z;
	wire s;
	fxyzc modc (s, x, y, z);
	
	initial
		begin
			$display("c) s = (x'.y)'.z\n\nx y z s");
			$monitor("%b %b %b %b", x, y, z, s);
			   x = 0; y = 0; z = 0;
			#1 x = 0; y = 0; z = 1;
			#1 x = 0; y = 1; z = 0;
			#1 x = 0; y = 1; z = 1;
			#1 x = 1; y = 0; z = 0;
			#1 x = 1; y = 0; z = 1;
			#1 x = 1; y = 1; z = 0;
			#1 x = 1; y = 1; z = 1;
		end
endmodule // letraB
	