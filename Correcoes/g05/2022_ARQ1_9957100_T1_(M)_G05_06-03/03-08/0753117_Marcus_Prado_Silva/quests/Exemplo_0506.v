// -------------------------
// Exemplo_0501 - GATES
// Nome: xxx yyy zzz
// Matricula: 999999
// -------------------------

// -------------------------
// f5_gate
// m a b s
// 0 0 0 1 <- (a ^ b)'
// 1 0 1 0 
// 2 1 0 0
// 3 1 1 1 <- (a ^ b)'
//
// -------------------------

module f5a ( output s,
    input a,
    input b );

    // definir dado local

    wire nand_a;
    wire nand_b;
    wire nand_a2;
    wire nand_b2;
    wire nand_c;

    // descrever por portas

    nand NAND1 ( nand_a, a, a );
    nand NAND2 ( nand_b, b, b );
    nand NAND3 ( nand_a2,nand_a, b );
    nand NAND4 ( nand_b2,nand_b, a );
    nand NAND5 ( nand_c, nand_a2, nand_b2 );
    nand NAND6 ( s, nand_c, nand_c );
    //and AND1 ( s, not_a, b );
endmodule // f5a

// -------------------------
// f5_gate
// m a b s
// 0 0 0 1 <- (a ^ b)'
// 1 0 1 0
// 2 1 0 0
// 3 1 1 1 <- (a ^ b)'
//
// -------------------------

module f5b ( output s,
input a,
input b );

// descrever por expressao

assign s = ~(a ^ b);
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
        $display("Exemplo_0506 - MARCUS PRADO SILVA - 753117");
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