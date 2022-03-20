// -------------------------
// Exemplo_0501 - GATES
// Nome: MARCUS PRADO SILVA
// Matricula: 753117
// -------------------------

// -------------------------
// f5_gate
// m a b s
// 0 0 0 1 <- ( a. b )'
// 1 0 1 1 <- ( a. b )'
// 2 1 0 1 <- ( a. b )'
// 3 1 1 0
//
// -------------------------

module f5_q08_a ( output s,
    input a,
    input b );

    // definir dado local

    wire nor_a;
    wire nor_b;
    wire nor_c;
    wire nor_c2;
    wire nor_c3;
    wire nor_c4;

    // descrever por portas

    nor NOR1 ( nor_a, a, a );
    nor NOR2 ( nor_b, b, b );
    nor NOR3 ( not_c, nor_a,nor_b );
    nor NOR4 ( not_c2, nor_c, nor_c );
    nor NOR5 ( not_c3, not_c2,not_c2 );
    nor NOR6 ( not_c4, not_c3,not_c3 );
    nor NOR7 (  s, not_c3,not_c4  );
    //and AND1 ( s, not_a, b );
endmodule // f5_q08_a

// -------------------------
// f5_gate
// m a b s
// 0 0 0 1 <- ( a. b )'
// 1 0 1 1 <- ( a. b )'
// 2 1 0 1 <- ( a. b )'
// 3 1 1 0
//
// -------------------------

module f5_q08_b ( output s,
input a,
input b );

// descrever por expressao

assign s = ~( a & b );
endmodule // f5_q08_b

module test_f5;

    // ------------------------- definir dados

    reg x;
    reg y;
    wire a, b;
    
    f5_q08_a moduloA ( a, x, y );
    f5_q08_b moduloB ( b, x, y );

    // ------------------------- parte principal

    initial
    begin : main
        $display("Exemplo_0509 - MARCUS PRADO SILVA - 753117");
        $display("Test module");
        $display("   x     y     a     b");
        
        // projetar testes do modulo

        $monitor("%4b  %4b  %4b  %4b", x, y, a, b);
        x = 1'b0; y = 1'b0;
        #1 x = 1'b0; y = 1'b1;
        #1 x = 1'b1; y = 1'b0;
        #1 x = 1'b1; y = 1'b1;
    end
endmodule // test_f5