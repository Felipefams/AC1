module f ( output s , input a, input c, input b);
assign s = !(a&c)||!(b||c);
endmodule //f
module test_f;
reg a;
reg c;
reg b;
wire wire_a;
f module_test (wire_a, a, c, b);
initial
begin : main
$display("test module");
$display("    a    c    b =    wire_a ");
$monitor(" %4b %4b %4b = %4b" , a, c, b, wire_a);
#1 a=1'b0; c=1'b0; b=1'b0; 
#1 a=1'b0; c=1'b0; b=1'b1; 
#1 a=1'b0; c=1'b1; b=1'b1; 
#1 a=1'b0; c=1'b1; b=1'b0; 
#1 a=1'b1; c=1'b1; b=1'b0; 
#1 a=1'b1; c=1'b1; b=1'b1; 
#1 a=1'b1; c=1'b0; b=1'b1; 
#1 a=1'b1; c=1'b0; b=1'b0; 
end
endmodule //test
