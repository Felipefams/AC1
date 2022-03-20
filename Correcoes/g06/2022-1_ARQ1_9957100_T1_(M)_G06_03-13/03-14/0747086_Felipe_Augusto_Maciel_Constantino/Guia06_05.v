// -------------------------
// Guia06_05
// Nome: Felipe Augusto Maciel Constantino
// Matricula: 747086
// -------------------------

module f5a ( output s,
    input a,
    input b, 
    input c);

 // definir dado local
    wire not_a;

 // descrever por portas
    not NOT1 ( not_a, a );
    and AND1 ( s, not_a, b );

endmodule // f5a

module f5b ( output s,
    input a,
    input b,
    input c);

 // definir dado local
    wire not_b;

 // descrever por portas
    not NOT1 ( not_b, b );
    and AND1 ( s, not_b, c );
    
endmodule // f5b

module f5c ( output s,
    input a,
    input b,
    input c);

// descrever por expressao
    assign s = (a | ~b) & (a | ~c);

endmodule // f5b

module test_f5;

// ------------------------- definir dados
    reg x;
    reg y;
    reg z;
    wire a, b, c;
    f5a moduloA ( a, x, y, z);
    f5b moduloB ( b, x, y, z);
    f5c moduloc ( c, x, y, z);

// ------------------------- parte principal
initial
    begin : main
    $display("\nguia_0506 - Felipe Augusto Maciel Constantino - 747086");
    $display("Test module");
    $display("   x    y    z    a    b    c");
 
// projetar testes do modulo
$monitor("%4b %4b %4b %4b %4b %4b", x, y, z, a, b, c);
    x = 1'b0; y = 1'b0; z = 1'b0;
    #1 x = 1'b0; y = 1'b0; z = 1'b1;
    #1 x = 1'b0; y = 1'b1; z = 1'b0;
    #1 x = 1'b0; y = 1'b1; z = 1'b1;
    #1 x = 1'b1; y = 1'b0; z = 1'b0;
    #1 x = 1'b1; y = 1'b0; z = 1'b1;
    #1 x = 1'b1; y = 1'b1; z = 1'b0;
    #1 x = 1'b1; y = 1'b1; z = 1'b1;

end
endmodule // test_f5

//resultados
/*
guia_0507 - Felipe Augusto Maciel Constantino - 747086
Test module
   x    y    a    b
   0    0    0    0
   0    1    1    1
   1    0    0    1
   1    1    0    0
*/