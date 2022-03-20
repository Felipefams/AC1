module notA_or_notB (output s, input a, input b);
    assign s = ~(a & b);
endmodule // notA_or_notB

module Exemplo_0504;
    reg a, b;
    wire s;
    notA_or_notB myModule(s, a, b);

    initial
    begin : main
        $display("Exemplo_0504 - GABRIEL PARFAN GUIMARAES - 754617");
        $display("   a    b    s");

        $monitor("%4b %4b %4b", a, b, s);
        a = 1'b0; b = 1'b0;
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end
endmodule // Exemplo_0504
