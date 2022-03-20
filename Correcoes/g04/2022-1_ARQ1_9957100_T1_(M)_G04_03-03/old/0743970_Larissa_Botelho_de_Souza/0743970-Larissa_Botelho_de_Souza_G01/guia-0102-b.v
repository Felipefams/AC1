/*
nome: Larissa Botelho  matrícula: 743970
Guia_0102.v
*/
module Guia_0102;
// define data
integer dec = 0;
// decimal
reg [7:0] a = 8'b0010101; // binary (bits)
reg [7:0] b = 8'b0011001; // binary (bits)
reg [7:0] c = 8'b0101001; // binary (bits)
reg [7:0] d = 8'b0101101; // binary (bits)
reg [7:0] e = 8'b0100011; // binary (bits)
// actions
    initial begin : main
        $display ( "Guia_0102 - Tests" );
        
        $display ( "a = %8b", a );
        dec = a;
        $display ( "dec = %d", dec );
        
        $display ( "b = %8b", b );
        dec = b;
        $display ( "dec = %d", dec );
        
        $display ( "c = %8b", c );
        dec = c;
        $display ( "dec = %d", dec );
        
        $display ( "d = %8b", d );
        dec = d;
        $display ( "dec = %d", dec );
        
        $display ( "e = %8b", e );
        dec = e;
        $display ( "dec = %d", dec );
    end // main
endmodule // Guia_0102

/* saída
Guia_0102 - Tests
a = 00010101
dec =          21
b = 00011001
dec =          25
c = 00101001
dec =          41
d = 00101101
dec =          45
e = 00100011
dec =          35
 */