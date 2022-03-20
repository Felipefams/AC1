// -------------------------
// Exemplo_0501 - GATES
// Nome: MARCUS PRADO SILVA
// Matricula: 753117
// -------------------------

// -------------------------
// f5_gate
// m a b s
// 0 0 0 0
// 1 0 1 1 <- a'.b
// 2 1 0 0
// 3 1 1 0
//
// -------------------------

module f5a ( output s,
    input a,
    input b );

    // definir dado local

   // wire not_a;
    wire nand_a;
    wire nand_b;

    // descrever por portas

   // not NOT1 ( not_a, a );
    nand NAND1(nand_a, a, a);
    nand NAND2(nand_b, nand_a, b);
    nand NAND3(s, nand_b, nand_b);
    //and AND1 ( s, not_a, b );
endmodule // f5a

// -------------------------
// f5_gate
// m a b s
// 0 0 0 0
// 1 0 1 1 <- a'.b
// 2 1 0 0
// 3 1 1 0
//
// -------------------------

module f5b ( output s,
input a,
input b );

// descrever por expressao

assign s = ~a & b;
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
        $display("Exemplo_0502 - MARCUS PRADO SILVA - 753117");
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