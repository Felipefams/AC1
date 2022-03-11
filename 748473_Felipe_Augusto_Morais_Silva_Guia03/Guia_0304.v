module Guia_0304;
/*eu fiquei em duvida se eu tenho que colocar signed em tudo aqui, pq no fim das contas so o resultado que vai ter valor negativo (no caso da C para baixo)*/
// a) data 
reg signed [5:0] a1 = 8'b101100;
reg signed [5:0] a2 = 8'b110100;
reg signed [5:0] a_ans = 0;
// b) data
reg signed [2:0] b11 = 8'b101;
reg [3:0] b12 = 8'b1001;
reg signed [2:0] b21 = 8'b100;
reg [3:0] b22 = 8'b0100;
reg signed [2:0] b1_ans = 0;
reg [3:0] b2_ans = 0;
// c) data
integer c11 = 2;
integer c12 = 1;
integer c13 = 3;
integer c21 = 1;
integer c22 = 2;
integer c23 = 3;
reg [5:0] c1 = 0;
reg [5:0] c2 = 0;
integer c_ans = 0;
// d) data
reg [7:0] d1 = 8'o312;
reg [7:0] d2 = 8'o123;
reg [7:0] d_ans = 8'o0;
// e) data 
reg [15:0] e1 = 16'h9d1;
reg [15:0] e2 = 16'ha1b;
reg signed [15:0] e_ans = 16'h0;

initial
begin : main
$display ( "Guia_0304 - Tests" );
//a)
a_ans = a1 + (~a2 + 1);
$display ( "a = 11100(2) - 1101(2) = %b", a_ans);
//b)
b1_ans = b11 + (~b21 + 1);
b2_ans = b12 + (~b22 + 1);
$display ( "b = 101,1001(2) - 10,01(2) = %b,%b", b1_ans, b2_ans);
//c)
c1[5:4] = c11;
c1[3:2] = c12;
c1[1:0] = c13;
c2[5:4] = c21;
c2[3:2] = c22;
c2[1:0] = c23;
c_ans = c1 + (~c2 + 1);
$display ( "c = 213(4) - 123(4) = %d", c_ans);
//d)
d_ans = d1 + (~d2 + 1);
$display ( "d = 312(8) - 123(8) = %o", d_ans);
//e)
e_ans = e1 + (~e2 + 1);
$display ( "9D1(16) - A1B(16) = %h", e_ans);

end // main
endmodule // Guia_0305* Guia_0305

