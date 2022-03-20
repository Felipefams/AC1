// ---------------------
// Guia 0401
// Nome: Larissa Botelho de Souza
// Matricula: 743970
// ---------------------

module fxyz (output s,
            input x, y, z);

    assign s = ~x | (~y & ~z);

endmodule // fxyz

module fxyz (output s1,    
            output s2, 
            input x, y, z);
            
    assign s1 = (~x | ~y ) & (~x | ~z);
    assign s2 = ~x | (~y & ~z);
endmodule // fxyz