/*

Guia_0105.v
*/
module Guia_0105;
// define data
integer x = 13; // decimal
reg [7:0] b; // binary
reg [0:2][7:0] s = "PUC"; // 3 characters (8 bits)

// actions
    initial begin : main
        $display ( "Guia_0105 - Tests" );
        $display ( "x = %d" , x );
        $display ( "b = %8b", b );
        $display ( "s = %s" , s );
        $display ( "p = %s" , p );
        b = x;
        $display ( "b = [%2b] [%2b] [%2b] [%2b] = %h %h %h %h", b[7:6], b[5:4], b[3:2], b[1:0], b[7:6], b[5:4], b[3:2], b[1:0] );
        s[0] = "-";
        s[1] = 8'b01001101; // 'M'
        s[2] = 71; // 'G'
        p[0] = 66;
        p[1] = 46;
        p[2] = 72;
        p[3] = 116;
        p[4] = 101;
        p[5] = 46;
        $display ( "s = %s", s );
        $display ( "p = %s", p );
        end // main
    endmodule // Guia_0105

//Não consegui adaptar o código para fazê-lo funcionar