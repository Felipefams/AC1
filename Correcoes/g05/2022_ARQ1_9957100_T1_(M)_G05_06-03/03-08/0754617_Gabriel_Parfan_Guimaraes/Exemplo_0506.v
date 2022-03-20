module negation_of_exclusive_disjunction (output s, input a, input b);
    assign s = ~((a & ~b) | (~a & b)); // ~(a ^ b)
endmodule // negation_of_exclusive_disjunction

module Exemplo_0506;
    reg a, b;
    wire s;
    negation_of_exclusive_disjunction myModule(s, a, b);

    initial
    begin : main
        $display("Exemplo_0506 - GABRIEL PARFAN GUIMARAES - 754617");
        $display("   a    b    s");

        $monitor("%4b %4b %4b", a, b, s);
        a = 1'b0; b = 1'b0;
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end
endmodule // Exemplo_0506
