//Guia_0606
//Caio Henrique Alvarenga Gonçalves
//750298
module f (output s,
 input x, input y, input z, input w);
// definir dado local
 wire not_y;
 wire not_z;
 wire not_w;
 wire s1;
 wire s2;
// descrever por portas
 not NOT1 (not_y, y);
 not NOT2 (not_z, z);
 not NOT3 (not_w, w);
 or OR1(s2, not_y, not_w);
 or OR2(s1, s2, not_z);
and AND1(s, x, s1);
endmodule // f


module tt (output s,
 input x,
 input y,
 input w, 
 input z);
// descrever por expressao
 assign s = x&(~y|~w|~z);
endmodule // tt

module principal;
// ------------------------- definir dados
 reg x;
 reg y;
 reg w;
 reg z;
 wire a, b;
 f moduloA (a, x, y, w, z);
 tt moduloB (b, x, y, w, z);
// ------------------------- parte principal
 initial
 begin : main
 $display("   x    y    w    z    a    b");
 // projetar testes do modulo
 $monitor("%4b %4b %4b %4b %4b %4b", x, y, w, z, a, b);
 x = 1'b0; y = 1'b0; w = 1'b0; z = 1'b0;

 #1 x = 1'b0; y = 1'b0; w = 1'b0; z = 1'b0;
 #1 x = 1'b0; y = 1'b0; w = 1'b0; z = 1'b1;
 #1 x = 1'b0; y = 1'b0; w = 1'b1; z = 1'b0;
 #1 x = 1'b0; y = 1'b0; w = 1'b1; z = 1'b1;
 #1 x = 1'b0; y = 1'b1; w = 1'b0; z = 1'b0;
 #1 x = 1'b0; y = 1'b1; w = 1'b0; z = 1'b1;
 #1 x = 1'b0; y = 1'b1; w = 1'b1; z = 1'b0; 
 #1 x = 1'b0; y = 1'b1; w = 1'b1; z = 1'b1;
 #1 x = 1'b1; y = 1'b0; w = 1'b0; z = 1'b0;
 #1 x = 1'b1; y = 1'b0; w = 1'b0; z = 1'b1;
 #1 x = 1'b1; y = 1'b0; w = 1'b1; z = 1'b0;
 #1 x = 1'b1; y = 1'b0; w = 1'b1; z = 1'b1;
 #1 x = 1'b1; y = 1'b1; w = 1'b0; z = 1'b0;
 #1 x = 1'b1; y = 1'b1; w = 1'b0; z = 1'b1;
 #1 x = 1'b1; y = 1'b1; w = 1'b1; z = 1'b0;
 #1 x = 1'b1; y = 1'b1; w = 1'b1; z = 1'b1;
 end
endmodule 