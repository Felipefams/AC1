/*
Guia_0203
*/
module Guia_0203;
// define data
real x = 0.625; // decimal
reg [7:0] example = 8'b1010_0000 ; // binary
reg [7:0] a = 8'b011101 ; // binary
reg [7:0] b = 8'b100101 ; // binary
reg [7:0] c = 8'b100110 ; // binary
reg [0:0] d1 = 8'b1;
reg [7:0] d2 = 8'b110011 ; // binary
reg [7:0] e1 = 1101;
reg [7:0] e2 = 8'b1101 ; // binary
integer pivot = 0;
// actions
initial
begin : main
    $display ( "Guia_0203 - Tests" );
    // $display ( "x = %f" , x );
    // $display ( "b = 0.%8b", example );
    // $display ( "b = 0.%d%d%d%d (4)", example[7:6],example[5:4],example[3:2],example[1:0]);
    // $display ( "b = 0.%x%x (16)", example[7:4],example[3:0] );
    // $display ( "b = 0.%o%o%d (8) ", example[7:5],example[4:2], example[1:0] ); // missing last group !!!
    //a) 0,011101
    $display ( "a = %d.%d%d%d (4)", a[7:6],a[5:4],a[3:2],a[1:0]);
    //b) 0,100101
    $display ( "b = 0.%o%o (8)", b[5:3],b[2:0]);
    //c) 0,100110
    //so consegui chegar nesse valor, tentei de tudo nessa c
    $display ( "c = 0.%x%x (16)", c[5:2], c[1:0]);
    //d) 1,110011
    pivot = d1;
    //nao tenho a menor ideia se eu posso fazer isso que eu fiz ali no pivot pra tirar os 0's
    $display ( "d = %1o.%o%o (8)",pivot[0:0] ,d2[5:3],d2[2:0]);
    //e) 1101,1101
    pivot = e1;
    $display ( "e = 0.%x%x (16)", pivot[0:0], e2[3:0]);
end // main
endmodule // Guia_0203
