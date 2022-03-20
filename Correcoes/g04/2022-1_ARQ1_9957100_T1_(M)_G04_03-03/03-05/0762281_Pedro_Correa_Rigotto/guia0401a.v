/*
Pedro Correa Rigotto - Matricula 762281
guia0401a
*/

// letra a

module fxyza (output s, input x, y, z);
	assign s = x&~(~y|~z);
endmodule // fxyza

module letraA;
	reg x, y, z;
	wire s;
	fxyza moda (s, x, y, z);
	
	initial
		begin
			$display("a) s = x.(y'+z')'\n");
			$display("x y z s");
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
		
endmodule // letraA


