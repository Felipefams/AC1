// -------------------------
// exercicio 5
// Nome: Bruno Mello Couto
// Matricula: 00683618
// -------------------------
// -------------------------
// -------------------------
// -------------------------
module f5b ( output s,         //jeito B
input a,
input b,
input c);
// descrever por expressao

assign s = a||(b & c);
endmodule // f5b







//RESULTADO//

module exercicio5;
// ------------------------- definir dados
reg x;
reg y;
reg z;
wire b;


f5b moduloB ( b, x, y,z);    //jeito 2
// ------------------------- parte principal
initial
begin : main
$display("exercicio 5 - Bruno Mello Couto - 00683618");
$display("Test module");
$display("   x    y    z    b");
// projetar testes do modulo
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
