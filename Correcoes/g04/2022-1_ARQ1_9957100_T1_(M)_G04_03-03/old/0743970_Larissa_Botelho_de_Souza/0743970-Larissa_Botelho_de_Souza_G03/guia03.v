/* nome: Larissa Botelho de Souza matrícula: 743970 */
/*
Guia_0301
*/
module Guia_0301;
reg [7:0] a = 8'b000_1010 ; 
reg [6:0] b = 8'b000_101 ; 
reg [5:0] c = 8'b001_01 ; 
reg [7:0] d = 0; 
reg [6:0] e = 0; 
reg [5:0] f = 0; 

initial
    begin : main
        $display ( "Guia_0301 - Tests" );
        d = ~a+1;
        $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, d );
        e = ~b+1;
        $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b", b, ~b, e );
        f = ~c+1;
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f );
end 
endmodule 

/*
Guia_0302
*/
module Guia_0302;
// define data
reg [7:0] a = 8'h0a ; // hexadecimal
reg [6:0] b = 8'o15 ; // octal
reg [5:0] c = 13; // decimal
reg [7:0] d = 0; // binary
reg [6:0] e = 0; // binary
reg [5:0] f = 0; // binary
// actions
initial
    begin : main
        $display ( "Guia_0302 - Tests" );
        d = ~a+1;
        $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, d );
        e = ~b+1;
        $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b", b, ~b, e );
        f = ~c+1;
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, f );
    end // main
endmodule // Guia_0302

/*
Guia_0303
*/
module Guia_0303;
// define data
reg signed [7:0] a = 8'b1111_1010; // binary
reg signed [6:0] b = 8'b1111_101 ; // binary
reg signed [5:0] c = 8'b1111_10 ; // binary
reg signed [7:0] d = 0; // binary
reg signed [6:0] e = 0; // binary
// actions
initial
    begin : main
        $display ( "Guia_0303 - Tests" );
        d = ~a+1;
        e = ~(a-1);
        $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, d, d, e );
        d = ~b+1;
        e = ~(b-1);
        $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b = %d = %d", b, ~b, d, d, e );
        d = ~c+1;
        e = ~(c-1);
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", c, ~c, d, d, e );
    end // main end // main
endmodule // Guia_0303

/*
Guia_0304
*/
module Guia_0304;
// define data
reg signed [7:0] a = 8'b1111_1010; // binary
reg signed [6:0] b = 8'b1111_101 ; // binary
reg signed [5:0] c = 8'b0001_10 ; // binary
reg signed [7:0] d = 0; // binary
reg signed [6:0] e = 0; // binary
reg signed [5:0] f = 0; // binary
// actions
initial
    begin : main
        $display ( "Guia_0304 - Tests" );
        $display ( "a = %8b = %d", a, a );
        $display ( "b = %8b = %d", b, b );
        $display ( "c = %8b = %d", c, c );
        d = a-b;
        $display ( "d = a-b = %8b-%8b = %8b = %d", a, b, d, d );
        d = b-a;
        $display ( "d = b-a = %8b-%8b = %8b = %d", b, a, d, d );
        d = a-c;
        $display ( "d = a-c = %8b-%8b = %8b = %d", a, c, d, d );
        d = c-a;
        $display ( "d = c-a = %8b-%8b = %8b = %d", c, a, d, d );
    end // main
endmodule // Guia_0304

/*
Guia_0305
*/
module Guia_0305;
// define data
reg [2:0] a = 0 ; // binary
reg [3:0] b = 0 ; // binary
reg [4:0] c = 0 ; // binary
reg [4:0] d = 0 ; // binary
reg [6:0] e = 0 ; // binary
// actions
initial
    begin : main
        $display ( "Guia_0305 - Tests" );
        a = 5 + 3; // OVERFLOW
        b = 10 - 5 + 25 + 3 + 1; // OVERFLOW
        c = 2 - 35; // OVERFLOW
        $display("\nOverflow");
        $display("a = %d = %3b = %d", (5+3) , a, a);
        $display("b = %d = %4b = %d", (10 - 5 + 25 + 3 + 1), b, b);
        $display("c = %d = %5b = %d", (2-35), c, c);
        $display("\nComplements");
        $display("0= %d = %3b = %3b", ~1 , (1-1), ~(1*1) );
        $display("1= %d = %3b = %3b", ~0 , (2-1), ~(0*1) );
        $display("2= %d = %3b = %3b", (1+1), (3-1), ~0+~0 );
    end // main
endmodule // Guia_0305