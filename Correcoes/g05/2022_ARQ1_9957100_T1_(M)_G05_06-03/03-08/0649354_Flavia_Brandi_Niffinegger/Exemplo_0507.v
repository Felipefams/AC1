module TestBench();

  reg inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7;

  wire out_0, out_1, out_2, out_3;

  \Untitled-Circuit  DUT0(out_0, out_1, out_2, out_3, inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7);

  initial begin

    inp_0 = 0;
    inp_1 = 0;
    inp_2 = 0;
    inp_3 = 1;
    inp_4 = 1;
    inp_5 = 0;
    inp_6 = 1;
    inp_7 = 1;

    $display("Flavia Brandi Niffinegger - 649354");

    #15
    $display("a = %b b = %b s = %b", inp_0, inp_1, out_0);
    $display("a = %b b = %b s = %b", inp_2, inp_3, out_1);
    $display("a = %b b = %b s = %b", inp_4, inp_5, out_2);
    $display("a = %b b = %b s = %b", inp_6, inp_7, out_3);
    $finish;

  end
endmodule


module \Untitled-Circuit (out_0, out_1, out_2, out_3, inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7);
  output out_0,  out_1,  out_2,  out_3;
  input inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7;
  wire nor_2_out, nor_1_out, nor_3_out, nor_0_out;
  assign nor_2_out = ~(inp_6 | inp_7);
  assign out_1 = nor_2_out;
  assign nor_1_out = ~(inp_4 | inp_5);
  assign out_2 = nor_1_out;
  assign nor_3_out = ~(inp_2 | inp_3);
  assign out_3 = nor_3_out;
  assign nor_0_out = ~(inp_0 | inp_1);
  assign out_0 = nor_0_out;
endmodule

