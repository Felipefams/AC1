module f ( output s , input c, input d, input b, input a);
assign s = (!c&d) | (b&c&!d) | (a&!b&c) + (a&b&!c);
endmodule //f
module test_f;
reg c;
reg d;
reg b;
reg a;
wire wire_a;
f module_test (wire_a, c, d, b, a);
initial
begin : main
$display("test module");
$display("    c    d    b    a =    wire_a ");
$monitor(" %4b %4b %4b %4b = %4b" , c, d, b, a, wire_a);
#1 c=1'b0; d=1'b0; b=1'b0; a=1'b0; 
#1 c=1'b0; d=1'b0; b=1'b0; a=1'b1; 
#1 c=1'b0; d=1'b0; b=1'b1; a=1'b1; 
#1 c=1'b0; d=1'b0; b=1'b1; a=1'b0; 
#1 c=1'b0; d=1'b1; b=1'b1; a=1'b0; 
#1 c=1'b0; d=1'b1; b=1'b1; a=1'b1; 
#1 c=1'b0; d=1'b1; b=1'b0; a=1'b1; 
#1 c=1'b0; d=1'b1; b=1'b0; a=1'b0; 
#1 c=1'b1; d=1'b1; b=1'b0; a=1'b0; 
#1 c=1'b1; d=1'b1; b=1'b0; a=1'b1; 
#1 c=1'b1; d=1'b1; b=1'b1; a=1'b1; 
#1 c=1'b1; d=1'b1; b=1'b1; a=1'b0; 
#1 c=1'b1; d=1'b0; b=1'b1; a=1'b0; 
#1 c=1'b1; d=1'b0; b=1'b1; a=1'b1; 
#1 c=1'b1; d=1'b0; b=1'b0; a=1'b1; 
#1 c=1'b1; d=1'b0; b=1'b0; a=1'b0; 
end
endmodule //test
