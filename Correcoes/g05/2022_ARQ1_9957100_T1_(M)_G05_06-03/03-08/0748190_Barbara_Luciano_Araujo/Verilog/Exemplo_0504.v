/* 
Guia_0504
Nome: Barbara Luciano Araujo
Matricula: 748190
*/

/********************

Test prediction:

m   a   b   s
0   0   0   1  ('a&b')
1   0   1   0  
2   1   0   0
3   1   1   0

********************/

module f5a (output s, input a, input b);

// define local dada
wire not_a;
wire not_b;

// describe by doors
not NOT1 (not_a, a);
not NOT2 (not_b, b);
and AND1 (s, not_a, not_b);
    
endmodule // f5a



/********************

Test prediction:

m   a   b   s
0   0   0   1  ('a&b')
1   0   1   0
2   1   0   0
3   1   1   0

********************/

module f5b (output s, input a, input b);

// describe by expression
assign s = ~a & ~b;

endmodule // f5b

module test_f5;

// define data
reg x;
reg y;
wire f;

f5a moduloA(f, x, y);
f5b moduloB(f, x, y);

// ---------- main part ----------

initial 
begin

    $display("\nExemplo_0504-Barbara_Luciano_Araujo-748190");
    $display("Test module\n");
    $display("   x    y  |   s");

    // project module tests
    $monitor("%4b %4b  |%4b", x, y, f);

       x = 1'b0; y = 1'b0;

    #1 x = 1'b0; y = 1'b1;
    #1 x = 1'b1; y = 1'b0;
    #1 x = 1'b1; y = 1'b1;    

end

endmodule // test_f5
