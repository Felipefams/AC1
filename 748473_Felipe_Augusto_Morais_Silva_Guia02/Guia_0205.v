/*
Guia_0205
*/
module Guia_0205;
// define data
integer z = 2;
real power2 = 1.0;
real result = 0.0;
real result2 = 0.0;
reg[7:0] int_part;
reg[7:0] frac_part;
reg[7:0] invert;
integer x = 7;
integer count = 0;
//problem a) data
//5.25 + 3.375 = x
reg [7:0] a1_1 = 8'b101; // integer part of the first number
reg [0:7] a1_2 = 8'b010; // decimal part of the first number
reg [7:0] a2_1 = 8'b011; // integer part of the second number
reg [0:7] a2_2 = 8'b011; // decimal part of the second number
//problem b) data
reg [7:0] b1_1 = 8'b1001; // integer part of the first number
reg [7:0] b1_2 = 8'b111; // decimal part of the first number
reg [7:0] b2_1 = 8'b10; // integer part of the second number
reg [7:0] b2_2 = 8'b11; // decimal part of the second number
//problem c) data
reg [7:0] c1_1 = 8'b100; // integer part of the first number
reg [7:0] c1_2 = 8'b011; // decimal part of the first number
reg [7:0] c2_1 = 8'b11; // integer part of the second number
reg [7:0] c2_2 = 8'b01; // decimal part of the second number
//problem d) data
reg [7:0] d1_1 = 8'b10110; // integer part of the first number
reg [7:0] d1_2 = 8'b01; // decimal part of the first number
reg [7:0] d2_1 = 8'b10; // integer part of the second number
reg [7:0] d2_2 = 8'b101; // decimal part of the second number
//problem e) data
reg [7:0] e1 = 8'b1101001;
reg [7:0] e2 = 8'b1001;
// actions
initial
begin : main
    $display ( "Guia_0205 - Tests" );
//=================================problem a
    int_part = a1_1 + a2_1;
    frac_part = a1_2 + a2_2;
    //thank you palindrome problem for this idea
    while (x >= 0)
    begin
        invert[x] = frac_part[count];
        x = x - 1;
        count = count + 1;
    end
    count = 0;
    x = 7;
    $display ("a)101.01 + 11,011 = %8b,%8b", int_part, invert);
//=================================problem b
    int_part = b1_1 - b2_1;
    frac_part = b1_2 - b2_2;
    while (x >= 0)
    begin
        invert[x] = frac_part[count];
        x = x - 1;
        count = count + 1;
    end
    count = 0;
    x = 7;
    $display ("b)1001.111 - 10,11 = %8b,%8b", int_part, invert);
//=================================problem c
    int_part = c1_1 * c2_1;
    frac_part = c1_2 * c2_2;
    while (x >= 0)
    begin
        invert[x] = frac_part[count];
        x = x - 1;
        count = count + 1;
    end
    count = 0;
    x = 7;
    $display ("c)100,011 * 11,01 = %8b,%8b", int_part, invert);
//=================================problem d
    int_part = d1_1 / d2_1;
    frac_part = d1_2 / d2_2;
    while (x >= 0)
    begin
        invert[x] = frac_part[count];
        x = x - 1;
        count = count + 1;
    end
    count = 0;
    x = 7;
    $display ("d)100,011 * 11,01 = %8b,%8b", int_part, invert);
//=================================problem e
    result = e1 % e2;
    $display ("e)100,011 * 11,01 = %b", result);
end // main
endmodule // Guia_0205