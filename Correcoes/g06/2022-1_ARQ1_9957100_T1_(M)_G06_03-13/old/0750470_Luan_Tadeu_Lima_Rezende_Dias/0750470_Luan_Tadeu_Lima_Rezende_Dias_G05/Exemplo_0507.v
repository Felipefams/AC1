module exclusive_disjunction (output s, input a, input b);
    assign s = ~((a | ~b) & (~a | b));// a ^ b
endmodule // exclusive_disjunction

module Exemplo_0507;
    reg a, b;
    wire s;
    exclusive_disjunction myModule(s, a, b);

    initial
    begin : main
        $display("Exemplo_0507 - Luan_Tadeu - 750470");
        $display("   a    b    s");

        $monitor("%4b %4b %4b", a, b, s);
        a = 1'b0; b = 1'b0;
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end
endmodule // Exemplo_0507
