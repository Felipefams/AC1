module f ( output s , input x, input y);
assign s = !(x | y);
endmodule //f
module test_f;
reg x;
reg y;
wire a;
f module_test (a, x, y);
initial
begin : main
$display("test module");
$display("    x    y =    a ");
$monitor(" %4b %4b = %4b" , x, y, a);
#1 x=1'b0; y=1'b0; 
#1 x=1'b0; y=1'b1; 
#1 x=1'b1; y=1'b1; 
#1 x=1'b1; y=1'b0; 
end
endmodule //test
