//Code by Felipe Augusto Morais Silva. 

module f5a ( output s,input x,input y, input w, input z );
assign s = (x & ~y) + (x & ~w) + (x & ~z);
endmodule // f5a

module f5b ( output s,input x,input y, input w, input z );
// descrever por expressao
//aqui vai ser a versao otimizada
assign s = (x & ~y) + (x & ~w) + (x & ~z);
endmodule // f5b
module test_f5;
// ------------------------- definir dados
reg x;
reg y;
reg w;
reg z;
wire a, b;
f5a moduloA ( a, x, y, w, z);
f5b moduloB ( b, x, y, w, z);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0606 - Felipe Augusto Morais Silva - 748473");
$display("Test module");
// projetar testes do modulo
$display("   x    y    w    z =   r1   r2");
$monitor("%4b %4b %4b %4b = %4b %4b", x, y, w, z, a, b);
		#1 x=0; y=0; w=0; z=0;
		#1 x=0; y=0; w=0; z=1;
		#1 x=0; y=0; w=1; z=0;
		#1 x=0; y=0; w=1; z=1;
		#1 x=0; y=1; w=0; z=0;
		#1 x=0; y=1; w=0; z=1;
		#1 x=0; y=1; w=1; z=0;
		#1 x=0; y=1; w=1; z=1;	
		#1 x=1; y=0; w=0; z=0;
		#1 x=1; y=0; w=0; z=1;
		#1 x=1; y=0; w=1; z=0;
		#1 x=1; y=0; w=1; z=1;
		#1 x=1; y=1; w=0; z=0;
		#1 x=1; y=1; w=0; z=1;
		#1 x=1; y=1; w=1; z=0;
		#1 x=1; y=1; w=1; z=1;
end
endmodule // test_f5
