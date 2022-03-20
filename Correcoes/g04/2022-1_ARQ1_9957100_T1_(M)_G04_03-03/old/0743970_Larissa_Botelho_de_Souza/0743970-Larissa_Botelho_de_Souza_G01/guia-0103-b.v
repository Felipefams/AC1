/*
nome: Larissa Botelho  matrícula: 743970
Guia_0103.v
*/
module Guia_0103;
// define data
integer a = 73; // decimal
integer b = 47; // decimal
integer c = 61; // decimal
integer d = 157; // decimal
integer e = 751; // decimal
reg [10:0] x = 0; // binary
// actions
    initial begin : main
        $display ( "Guia_0103 - Tests" );
        
        $display ( "a = %d" , a );
        x = a;
        $display ( "x = %B (2) = %o (8) = %x (16) = %X (16)", x, x, x, x );
        
        $display ( "b = %d" , b );
        x = b;
        $display ( "x = %o (8)", x);
        
        $display ( "c = %d" , c );
        x = c;
        $display ( "x = %x (16)", x );
        
        $display ( "d = %d" , d );
        x = d;
        $display ( "x = %x (16)", x );
        
        $display ( "e = %d" , e );
        x = e;
        $display ( "x = %x (16)", x );
        
    end // main
endmodule // Guia_0103