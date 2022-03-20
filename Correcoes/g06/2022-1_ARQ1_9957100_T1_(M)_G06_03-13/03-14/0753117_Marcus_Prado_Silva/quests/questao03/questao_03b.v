// -------------------------
// Guia_06 
// Nome: Marcus Prado Silva
// Matricula: 753117
// -------------------------


module f5a ( output s,
input x,
input y,
input w,
input z );

// Teste descrito por expressao

assign s = (~x & ~y & ~w & ~z) | (~x & ~y & w & ~z) | (~x & ~y & w & z) | (~x & y & ~w & z) | (x & y & ~w & z) | (x & ~y & ~w & ~z) | (~x & y & ~w & z);
endmodule // f5a

module f5b ( output s,
input x,
input y,
input w,
input z );

// Teste descrito por expressao

assign s = (~x & ~y & w) | (y & ~w & z) | (x & ~y & ~w) | (~y & ~w & ~z);
endmodule // f5b

module test_f5;

    // ------------------------- definir dados

    reg xa;
    reg ya;
    reg wa;
    reg za;
    
    reg xb;
    reg yb;
    reg wb;
    reg zb;

    wire a,b;
    f5a moduloA ( a, xa, ya, wa, za );
    f5b moduloB ( b, xb, yb, wb, zb );
    

    // ------------------------- parte principal

    initial
    begin : main
        $display("Guia_06 Q03 letra B - Marcus Prado Silva - 753117");
        $display("Sem Simplificar");
        $display("   x   y   w   z   s ");
        
        // projetar testes do modulo

        $monitor("%4b%4b%4b%4b%4b", xa, ya, wa, za, a);
        xa = 1'b0; ya = 1'b0;wa = 1'b0;za = 1'b0;
        #1 xa = 1'b0; ya = 1'b0;wa = 1'b0;za = 1'b1;
        #1 xa = 1'b0; ya = 1'b0;wa = 1'b1;za = 1'b0;
        #1 xa = 1'b0; ya = 1'b0;wa = 1'b1;za = 1'b1;
        #1 xa = 1'b0; ya = 1'b1;wa = 1'b0;za = 1'b0;
        #1 xa = 1'b0; ya = 1'b1;wa = 1'b0;za = 1'b1;
        #1 xa = 1'b0; ya = 1'b1;wa = 1'b1;za = 1'b0;
        #1 xa = 1'b0; ya = 1'b1;wa = 1'b1;za = 1'b1;
        #1 xa = 1'b1; ya = 1'b0;wa = 1'b0;za = 1'b0;
        #1 xa = 1'b1; ya = 1'b0;wa = 1'b0;za = 1'b1;
        #1 xa = 1'b1; ya = 1'b0;wa = 1'b1;za = 1'b0;
        #1 xa = 1'b1; ya = 1'b0;wa = 1'b1;za = 1'b1;
        #1 xa = 1'b1; ya = 1'b1;wa = 1'b0;za = 1'b0;
        #1 xa = 1'b1; ya = 1'b1;wa = 1'b0;za = 1'b1;
        #1 xa = 1'b1; ya = 1'b1;wa = 1'b1;za = 1'b0;
        #1 xa = 1'b1; ya = 1'b1;wa = 1'b1;za = 1'b1;
        #1 xa = 1'b0; ya = 1'b0;wa = 1'b0;za = 1'b0;

        
        
        $display("\n Simplificado");
        $display("   x   y   w   z   s ");
        
        // projetar testes do modulo

        $monitor("%4b%4b%4b%4b%4b", xb, yb, wb, zb, b);
        xb = 1'b0; yb = 1'b0;wb = 1'b0;zb = 1'b0;
        #1 xb = 1'b0; yb = 1'b0;wb = 1'b0;zb = 1'b1;
        #1 xb = 1'b0; yb = 1'b0;wb = 1'b1;zb = 1'b0;
        #1 xb = 1'b0; yb = 1'b0;wb = 1'b1;zb = 1'b1;
        #1 xb = 1'b0; yb = 1'b1;wb = 1'b0;zb = 1'b0;
        #1 xb = 1'b0; yb = 1'b1;wb = 1'b0;zb = 1'b1;
        #1 xb = 1'b0; yb = 1'b1;wb = 1'b1;zb = 1'b0;
        #1 xb = 1'b0; yb = 1'b1;wb = 1'b1;zb = 1'b1;
        #1 xb = 1'b1; yb = 1'b0;wb = 1'b0;zb = 1'b0;
        #1 xb = 1'b1; yb = 1'b0;wb = 1'b0;zb = 1'b1;
        #1 xb = 1'b1; yb = 1'b0;wb = 1'b1;zb = 1'b0;
        #1 xb = 1'b1; yb = 1'b0;wb = 1'b1;zb = 1'b1;
        #1 xb = 1'b1; yb = 1'b1;wb = 1'b0;zb = 1'b0;
        #1 xb = 1'b1; yb = 1'b1;wb = 1'b0;zb = 1'b1;
        #1 xb = 1'b1; yb = 1'b1;wb = 1'b1;zb = 1'b0;
        #1 xb = 1'b1; yb = 1'b1;wb = 1'b1;zb = 1'b1;
    end
    
endmodule // test_f5