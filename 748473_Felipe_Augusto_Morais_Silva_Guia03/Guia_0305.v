module Guia_0305;
//eu vou considerar apenas o resultado como signed
// a) data 
reg [5:0] a1 = 8'b101100;
reg [5:0] a2 = 8'b110100;
reg signed [6:0] a_ans = 0;
// b) data
reg [3:0] b11 = 8'b0101;
reg [3:0] b12 = 8'b1010;
reg [3:0] b21 = 8'o2;
reg [3:0] b22 = 8'o3;
reg signed [4:0] b_ans1 = 0;
reg [3:0] b_ans2 = 0;
// c) data
integer c11 = 2;
integer c12 = 3;
integer c13 = 1;
//os dois primeiros sao 00 
reg [7:0] c1 = 0;
reg [7:0] c2 = 8'hf;
reg signed [8:0] c_ans = 0;
// d) data
reg [7:0] d1 = 8'hdc;
reg [7:0] d2 = 8'b01001011;
reg signed [8:0] d_ans = 0;
// e) data
integer e1 = 36;
reg [7:0] e2 = 8'h2b;
reg signed [8:0] e_ans = 0;

initial
begin : main
$display ( "Guia_0305 - Tests" );
//a)
a_ans = a1 + (~a2 + 1);
$display ( "a = 101100(2) - 1101(2) = %b", a_ans);
//b)
b_ans1 = b11 + (~b21 + 1);
b_ans2 = b12 + (~b22 + 1);
$display ( "b = 101,1010(2) - 2,3(8) = %b.%b", b_ans1,b_ans2);
//c)
c1[7] = 0;
c1[6] = 0;
c1[5:4] = c11;
c1[3:2] = c12;
c1[1:0] = c13;
c_ans = c1 + (~c2 + 1);
$display ( "c =  231(4) - F (16) = %b", c_ans);
//d)
d_ans = d1 + (~d2 + 1);
$display ( "d =  DC(16 ) - 1001011(2) = %b", d_ans);
//e)
e_ans = e1 + (~e2 + 1);
$display ( "e =  36(10) - 2B(16) = %b", e_ans);

end // main
endmodule // Guia_0305* Guia_0305

