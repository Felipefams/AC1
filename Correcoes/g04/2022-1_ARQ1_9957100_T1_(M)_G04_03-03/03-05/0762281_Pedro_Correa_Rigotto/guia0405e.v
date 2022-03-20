/*
Pedro Correa Rigotto - Matricula 762281
guia0405e
*/

module fxywz (output sope, output pose, input x, y, w, z);
	assign sope = (~x&~y&~w&~z)|(~x&~y&~w&z)|(~x&~y&w&z)|(~x&y&~w&z)|(~x&y&w&z)|(x&~y&~w&~z)|(x&~y&w&~z)|(x&y&~w&z)|(x&y&w&~z)|(x&y&w&z);
	assign pose = (x|y|~w|z)&(x|~y|w|z)&(x|~y|~w|z)&(~x|y|w|~z)&(~x|y|~w|~z)&(~x|~y|w|z);
endmodule // fxywz

module letraE;
	reg x, y, w, z;
	wire sope, pose;
	integer n;
	fxywz exercicio(sope, pose, x, y, w, z);
	
	initial begin
		$display(" n  x  y  w  z  SoP(0,1,3,5,7,8,10,13,14,15)  PoS(2,4,6,9,11,12)");
		$monitor("%2d  %b  %b  %b  %b  %b                             %b", n, x, y, w, z, sope, pose);
		    x = 0; y = 0; w = 0; z = 0; n = 0;
		#1  x = 0; y = 0; w = 0; z = 1; n = n+1;
		#1  x = 0; y = 0; w = 1; z = 0; n = n+1;
		#1  x = 0; y = 0; w = 1; z = 1; n = n+1;
		#1  x = 0; y = 1; w = 0; z = 0; n = n+1;
		#1  x = 0; y = 1; w = 0; z = 1; n = n+1;
		#1  x = 0; y = 1; w = 1; z = 0; n = n+1;
		#1  x = 0; y = 1; w = 1; z = 1; n = n+1;
		#1  x = 1; y = 0; w = 0; z = 0; n = n+1;
		#1  x = 1; y = 0; w = 0; z = 1; n = n+1;
		#1  x = 1; y = 0; w = 1; z = 0; n = n+1;
		#1  x = 1; y = 0; w = 1; z = 1; n = n+1;
		#1  x = 1; y = 1; w = 0; z = 0; n = n+1;
		#1  x = 1; y = 1; w = 0; z = 1; n = n+1;
		#1  x = 1; y = 1; w = 1; z = 0; n = n+1;
		#1  x = 1; y = 1; w = 1; z = 1; n = n+1;
	end
endmodule // letraE