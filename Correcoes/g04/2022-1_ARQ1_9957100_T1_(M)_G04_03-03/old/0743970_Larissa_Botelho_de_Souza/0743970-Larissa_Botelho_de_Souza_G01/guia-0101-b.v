/*
Guia_0101.v
nome: Larissa Botelho  matrícula: 743970
*/
module Guia_0101;
// define data
integer a = 26; // decimal
integer b = 55; // decimal
integer c = 713; // decimal
integer d = 312; // decimal
integer e = 366; // decimal
reg [10:0] bin = 0; // binary
// actions
    initial begin : main
        $display ( "a = %d" , a );
        bin = a;
        $display ( "bin = %8b", bin );
    
        $display ( "b = %d" , b );
        bin = b;
        $display ( "bin = %8b", bin );
        
        
        $display ( "c = %d" , c );
        bin = c;
        $display ( "bin = %8b", bin );
        
        $display ( "d = %d" , d );
        bin = d;
        $display ( "bin = %8b", bin );
        
        
        $display ( "e = %d" , e );
        bin = e;
        $display ( "bin = %8b", bin );
        
    end // main
endmodule // Guia_0101

/* saída
a =          26
bin = 00000011010
b =          55
bin = 00000110111
c =         713
bin = 01011001001
d =         312
bin = 00100111000
e =         366
 */