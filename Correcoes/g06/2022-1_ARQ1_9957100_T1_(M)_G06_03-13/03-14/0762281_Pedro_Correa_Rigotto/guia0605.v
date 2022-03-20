/*
Pedro Correa Rigotto - Matricula 762281
guia0605
*/

module circ (output s, input x, y, z);
	wire w1, w2;
	and AND1(w1, x, ~y);
	and AND2(w2, x, ~z);
	or OR1(s, w1, w2);
endmodule // circ

module ex5;
	wire s;
	reg x, y, z;
	circ circ1(s, x, y, z);
	
	initial begin
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
endmodule // ex5