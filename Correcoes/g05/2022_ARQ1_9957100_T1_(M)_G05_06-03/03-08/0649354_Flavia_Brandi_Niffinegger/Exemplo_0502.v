module TestBench();

  reg inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7;

  wire out_0, out_1, out_2, out_3;

  Main DUT0(out_0, out_1, out_2, out_3, inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7);

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

module Main(out_0, out_1, out_2, out_3, inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7);
  output out_0,  out_1,  out_2,  out_3;
  input inp_0, inp_1, inp_2, inp_3, inp_4, inp_5, inp_6, inp_7;
  wire nand_10_out, nand_11_out, nand_9_out, nand_8_out, nand_7_out, nand_6_out, nand_4_out, nand_5_out, nand_3_out, nand_1_out, nand_2_out, nand_0_out;
  assign nand_10_out = ~(nand_9_out & inp_7);
  assign nand_11_out = ~(nand_10_out & nand_10_out);
  assign out_3 = nand_11_out;
  assign nand_9_out = ~(inp_6 & inp_6);
  assign nand_8_out = ~(nand_6_out & inp_5);
  assign nand_7_out = ~(nand_8_out & nand_8_out);
  assign out_2 = nand_7_out;
  assign nand_6_out = ~(inp_4 & inp_4);
  assign nand_4_out = ~(nand_3_out & inp_3);
  assign nand_5_out = ~(nand_4_out & nand_4_out);
  assign out_1 = nand_5_out;
  assign nand_3_out = ~(inp_2 & inp_2);
  assign nand_1_out = ~(nand_0_out & inp_1);
  assign nand_2_out = ~(nand_1_out & nand_1_out);
  assign out_0 = nand_2_out;
  assign nand_0_out = ~(inp_0 & inp_0);
endmodule

