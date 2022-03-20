// -------------------------
// Exemplo_0501 - GATES
// Nome: MARCUS PRADO SILVA
// Matricula: 753117
// -------------------------

// -------------------------
// f5_gate
// m a b s
// 0 0 0 1 <- (a' . b')
// 1 0 1 0 
// 2 1 0 0
// 3 1 1 0
//
// -------------------------

module f5a ( output s,
    input a,
    input b );

    // definir dado local

    wire nor_a;
    wire nor_b;
    wire nor_a2;
    wire nor_b2;

    // descrever por portas

    nor NOR1 ( nor_a, a, a );
    nor NOR2 ( nor_b, b, b );
    nor NOR3 ( nor_a2, nor_a, nor_a );
    nor NOR4 ( nor_b2, nor_b, nor_b );
    nor NOR2 ( s, nor_a2, nor_b2 );

    //and AND1 ( s, not_a, not_b );
endmodule // f5a

// -------------------------
// f5_gate
// m a b s
// 0 0 0 1 <- (a' . b')
// 1 0 1 0
// 2 1 0 0
// 3 1 1 0
//
// -------------------------

module f5b ( output s,
input a,
input b );

// descrever por expressao

assign s =  (~a & ~b);
endmodule // f5b

module test_f5;

    // ------------------------- definir dados

    reg x;
    reg y;
    wire a, b;
    f5a moduloA ( a, x, y );
    f5b moduloB ( b, x, y );

    // ------------------------- parte principal

    initial
    begin : main
        $display("Exemplo_0505 - MARCUS PRADO SILVA - 753117");
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