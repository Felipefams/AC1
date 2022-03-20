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
  wire nor_9_out, nor_10_out, nor_11_out, nor_6_out, nor_7_out, nor_8_out, nor_3_out, nor_4_out, nor_5_out, nor_0_out, nor_1_out, nor_2_out;
  assign nor_9_out = ~(inp_7 | inp_7);
  assign nor_10_out = ~(inp_6 | nor_9_out);
  assign nor_11_out = ~(nor_10_out | nor_10_out);
  assign out_3 = nor_11_out;
  assign nor_6_out = ~(inp_5 | inp_5);
  assign nor_7_out = ~(inp_4 | nor_6_out);
  assign nor_8_out = ~(nor_7_out | nor_7_out);
  assign out_2 = nor_8_out;
  assign nor_3_out = ~(inp_3 | inp_3);
  assign nor_4_out = ~(inp_2 | nor_3_out);
  assign nor_5_out = ~(nor_4_out | nor_4_out);
  assign out_1 = nor_5_out;
  assign nor_0_out = ~(inp_1 | inp_1);
  assign nor_1_out = ~(inp_0 | nor_0_out);
  assign nor_2_out = ~(nor_1_out | nor_1_out);
  assign out_0 = nor_2_out;
endmodule

