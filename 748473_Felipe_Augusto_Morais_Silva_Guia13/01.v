`include "clock.v"
`include "pulse.v"
module jkff ( output q, output qnot,
              input j, input k,
              input clk, input clear );
    reg q, qnot;
    always @( posedge clk or clear )
    begin
        if ( clear ) begin q <= 0; qnot <= 1; end
        else
        if ( j & ~k ) begin q <= 1; qnot <= 0; end
        else
        if ( ~j & k ) begin q <= 0; qnot <= 1; end
        else
        if ( j & k )
        begin q <= ~q; qnot <= ~qnot; end
    end
endmodule // jkff

module jk_test;
 reg t, clk, clear, preset;
 wire qnot1, qnot2, qnot3, qnot4, qnot5, q1, q2, q3, q4, q5;

 jkff01 jk01 ( q1, qnot1, t, t, clk, 1'b0, clear );
 jkff01 jk02 ( q2, qnot2, t, t, q1, 1'b0, clear );
 jkff01 jk03 ( q3, qnot3, t, t, q2, 1'b0, clear );
 jkff01 jk04 ( q4, qnot4, t, t, q3, 1'b0, clear );
 jkff01 jk05 ( q5, qnot5, t, t, q4, 1'b0, clear );

 //** initial begin
endmodule
