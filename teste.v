module f ( output z , input c, input a, input b);
wire w1, w2;
      and AND_1 (z,w1,w2);
      or  OR__1 (w1,a,b);
      not NOT_1 (w2,c);
endmodule
module test_f;
reg c;
reg a;
reg b;
wire z;
f module_test (z, c, a, b);
initial
begin : main
$display("test module");
$display("    c    a    b =    a ");
$monitor(" %4b %4b %4b = %4b" , c, a, b, z);
#1 c=1'b0; a=1'b0; b=1'b0; 
#1 c=1'b0; a=1'b0; b=1'b1; 
#1 c=1'b0; a=1'b1; b=1'b1; 
#1 c=1'b0; a=1'b1; b=1'b0; 
#1 c=1'b1; a=1'b1; b=1'b0; 
#1 c=1'b1; a=1'b1; b=1'b1; 
#1 c=1'b1; a=1'b0; b=1'b1; 
#1 c=1'b1; a=1'b0; b=1'b0; 
end
endmodule //test
