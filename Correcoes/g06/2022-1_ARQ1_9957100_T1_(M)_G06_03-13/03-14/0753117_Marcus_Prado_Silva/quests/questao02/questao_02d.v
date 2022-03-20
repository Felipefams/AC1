// -------------------------
// Guia_06 
// Nome: Marcus Prado Silva
// Matricula: 753117
// -------------------------


module f5a ( output s,
input X,
input Y,
input Z );

// Teste descrito por expressao

assign s = (X | Y | Z) & (X | ~Y | ~Z) & (~X | Y | Z) & (~X | ~Y | ~Z);
endmodule // f5a

module f5b ( output s,
input X,
input Y,
input Z );

// Teste descrito por expressao

assign s = (Y | Z) & (~Y | ~Z);
endmodule // f5b

module test_f5;

    // ------------------------- definir dados

    reg xa;
    reg ya;
    reg za;
    
    reg xb;
    reg yb;
    reg zb;
    wire a,b;
    f5a moduloA ( a, xa, ya, za );
    f5b moduloB ( b, xb, yb, zb );
    

    // ------------------------- parte principal

    initial
    begin : main
        $display("Guia_06 Q02 letra D) - Marcus Prado Silva - 753117");
        $display("Sem Simplificar");
        $display("   x   y   z   s ");
        
        // projetar testes do modulo

        $monitor("%4b%4b%4b%4b", xa, ya, za, a);
        xa = 1'b0; ya = 1'b0;za = 1'b0;
        #1 xa = 1'b0; ya = 1'b0;za = 1'b1;
        #1 xa = 1'b0; ya = 1'b1;za = 1'b0;
        #1 xa = 1'b0; ya = 1'b1;za = 1'b1;
        #1 xa = 1'b1; ya = 1'b0;za = 1'b0;
        #1 xa = 1'b1; ya = 1'b0;za = 1'b1;
        #1 xa = 1'b1; ya = 1'b1;za = 1'b0;
        #1 xa = 1'b1; ya = 1'b1;za = 1'b1;
        #1 xa = 1'b0; ya = 1'b0;za = 1'b0;
        
        $display("\n Simplificado");
        $display("   x   y   z   s ");
        $monitor("%4b%4b%4b%4b", xb, yb, zb, b);
        xb = 1'b0; yb = 1'b0;zb = 1'b0;
        #1 xb = 1'b0; yb = 1'b0;zb = 1'b1;
        #1 xb = 1'b0; yb = 1'b1;zb = 1'b0;
        #1 xb = 1'b0; yb = 1'b1;zb = 1'b1;
        #1 xb = 1'b1; yb = 1'b0;zb = 1'b0;
        #1 xb = 1'b1; yb = 1'b0;zb = 1'b1;
        #1 xb = 1'b1; yb = 1'b1;zb = 1'b0;
        #1 xb = 1'b1; yb = 1'b1;zb = 1'b1;
    end
    
endmodule // test_f5