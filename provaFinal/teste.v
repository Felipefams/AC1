    module circuit_01 ( output p, output q, input a, input b );
      wire w1,w2,w3,w4;
      nand N1 ( w1,  b,  b );
      nand N2 ( w2,  a,  a );
      nand N3 ( w3, w1,  a );
      nand N4 ( w4, w2,  b );
      nand N5 (  q, w3, w4 );
      nand N6 (  p, w5, w5 );
      nand N7 ( w5,  a,  b );
	  endmodule

module test_f;
reg a;
reg b;
wire wire_q;
wire wire_p;
circuit_01 module_test(wire_p, wire_q, a, b);
initial
begin : main
$display("test module");
$display("    a    c    b =    wire_p 	wire_q");
$monitor(" %4b %4b " , wire_p, wire_q);
#1 a=1'b1; b=1'b1;
end
endmodule //test

