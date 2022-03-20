// module
module f5b ( output s,         
	input a,
	input b,
	input c);
	assign s = a||(b & c);
endmodule // end module

// dados
module Guia0605;
	reg x;
	reg y;
	reg z;
	wire b;
	
f5b moduloB ( b, x, y,z);    

// main
initial
begin : main
	//testes do modulo
	$monitor("%4b %4b %4b %4b", x, y, z, b);
	   x=0; y=0; z=0;
	#1 x=0; y=0; z=1;
	#1 x=0; y=1; z=0;
	#1 x=1; y=0; z=0;
	#1 x=0; y=1; z=1;
	#1 x=1; y=0; z=1;
	#1 x=1; y=1; z=0;
	#1 x=1; y=1; z=1;
end
endmodule 
