module notA_and_B (output s, input a, input b);
    assign s = ~(~(~a & b) & ~(~a & b));
endmodule // notA_and_B

module Exemplo_0502;
    reg a, b;
    wire s;
    notA_and_B myModule(s, a, b);

    initial
    begin : main
        $display("Exemplo_0502 - GABRIEL PARFAN GUIMARAES - 754617");
        $display("   a    b    s");

        $monitor("%4b %4b %4b", a, b, s);
        a = 1'b0; b = 1'b0;
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end
endmodule // Exemplo_0502
