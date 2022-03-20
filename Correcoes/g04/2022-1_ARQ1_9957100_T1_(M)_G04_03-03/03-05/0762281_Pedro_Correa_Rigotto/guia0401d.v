/*
Pedro Correa Rigotto - Matricula 762281
guia0401d
*/

// letra d

module fxyzd (output s, input x, y, z);
	assign s = ~(x&~y)&z;
endmodule // fxyzd

module letraD;
	reg x, y, z;
	wire s;
	fxyzd modd (s, x, y, z);
	
	initial
		begin
			$display("d) s = (x.y')'.z\n\nx y z s");
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
endmodule // letraD