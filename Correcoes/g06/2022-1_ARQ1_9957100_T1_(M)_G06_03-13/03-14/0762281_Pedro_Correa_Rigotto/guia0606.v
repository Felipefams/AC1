/*
Pedro Correa Rigotto - Matricula 762281
guia0606
*/

module circ(output s, input x, y, w, z);
	wire w1, w2;
	or OR1(w1, ~y, ~w);
	or OR2(w2, w1, ~z);
	and AND1(s, w2, x);
endmodule // circ

module ex2;
	wire s;
	reg x, y, w, z;
	circ circ1(s, x, y, w, z);
	
	initial begin
		$display("x y w z s");
		$monitor("%b %b %b %b %b", x, y, w, z, s);
		   x = 0; y = 0; w = 0; z = 0;
		#1 x = 0; y = 0; w = 0; z = 1;
		#1 x = 0; y = 0; w = 1; z = 0;
		#1 x = 0; y = 0; w = 1; z = 1;
		#1 x = 0; y = 1; w = 0; z = 0;
		#1 x = 0; y = 1; w = 0; z = 1;
		#1 x = 0; y = 1; w = 1; z = 0;
		#1 x = 0; y = 1; w = 1; z = 1;
		#1 x = 1; y = 0; w = 0; z = 0;
		#1 x = 1; y = 0; w = 0; z = 1;
		#1 x = 1; y = 0; w = 1; z = 0;
		#1 x = 1; y = 0; w = 1; z = 1;
		#1 x = 1; y = 1; w = 0; z = 0;
		#1 x = 1; y = 1; w = 0; z = 1;
		#1 x = 1; y = 1; w = 1; z = 0;
		#1 x = 1; y = 1; w = 1; z = 1;
		
	end
endmodule // ex2