module f1( output s,
            input a, b, c);
         assign s = ~a & ~b &  c //m1
                  | ~a &  b &  c // m3
                  |  a &  b & ~c // m6
                  |  a &  b &  c; //m7
endmodule

module test_f1;
    reg a, b, c;
    wire s;

    f1 example1 (s, a, b, c);

    initial
        begin
            a = 0; b = 0; c =0;
        end
    
    initial
        begin
            $display("example_0401 - 743970");
            $display ("a b c  s")
            $monitor (" %b %b %b  %b", a, b, c, s);
        #1 a = 0; b = 0; c = 1;
        #1 a = 0; b = 1; c = 0;
        #1 a = 0; b = 1; c = 1;
        #1 a = 1; b = 0; c = 0;
        #1 a = 1; b = 0; c = 1;
        #1 a = 1; b = 1; c = 1;
        end

endmodule // testf1