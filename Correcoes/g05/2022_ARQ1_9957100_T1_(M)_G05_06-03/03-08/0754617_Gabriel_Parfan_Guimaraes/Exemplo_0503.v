module A_or_notB (output s, input a, input b);
    assign s = ~(~(a | ~b) | ~(a | ~b));
endmodule // A_or_notB

module Exemplo_0503;
    reg a, b;
    wire s;
    A_or_notB myModule(s, a, b);

    initial
    begin : main
        $display("Exemplo_0503 - GABRIEL PARFAN GUIMARAES - 754617");
        $display("   a    b    s");

        $monitor("%4b %4b %4b", a, b, s);
        a = 1'b0; b = 1'b0;
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end
endmodule // Exemplo_0503
