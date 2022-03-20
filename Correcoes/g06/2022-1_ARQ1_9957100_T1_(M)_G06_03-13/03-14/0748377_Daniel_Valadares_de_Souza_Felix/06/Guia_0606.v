// module
module f5b ( output s,         
	input a,
	input b,
	input c, 
	input d);
	assign s = ~((a)&(b|c|d));
endmodule // end module

//dados
module Guia0606;
	reg x;
	reg y;
	reg z;
	reg w;
	wire b;

f5b moduloB ( b, x, y, z, w);   
 
//main
initial
begin : main
	// teste do modulo
	$monitor("%4b %4b %4b %4b %4b", x, y, z, w, b);
	   x=0; y=0; z=0; w=0;
	#1 x=0; y=0; z=0; w=1;
	#1 x=0; y=0; z=1; w=0;
	#1 x=0; y=0; z=1; w=1;
	#1 x=0; y=1; z=0; w=0;
	#1 x=0; y=1; z=0; w=1;
	#1 x=0; y=1; z=1; w=0;
	#1 x=0; y=1; z=1; w=1;
	#1 x=1; y=0; z=0; w=0;
	#1 x=1; y=0; z=0; w=1;
	#1 x=1; y=0; z=1; w=0;
	#1 x=1; y=0; z=1; w=1;
	#1 x=1; y=1; z=0; w=0;
	#1 x=1; y=1; z=0; w=1;
	#1 x=1; y=1; z=1; w=0;
	#1 x=1; y=1; z=1; w=1;
end
endmodule 
