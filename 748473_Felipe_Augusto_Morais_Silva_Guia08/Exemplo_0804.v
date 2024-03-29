// -------------------------
// Exemplo_0804 - 
// Nome:Felipe Augusto Morais Silva 
// Matricula:748473 
// -------------------------
// -------------------------
//  Equality
// -------------------------
module halfDiff (output s0, output s1, input a, input b);
xor XOR1(s0,a,b);
not NOT1(NOT1, a);
and (s1, NOT1, b);
endmodule // inequality operator

module fullDiff (output s0, output s1, input a, input b, input carry);
wire inf_hd_U, inf_hd_B; //inferior halfDiff upper wire, inferior halfDiff bottom wire
wire sup_hd_B; //superior halfDiff bottom wire
halfDiff hd1(inf_hd_U, inf_hd_B, a, b);
halfDiff hd2(s0, sup_hd_B, inf_hd_U, carry);
and AND1(s1, sup_hd_B, inf_hd_B);
endmodule
// -------------------------
// full subtractor
// ------------------------- parte principal
module halfSubTeste;
reg a, b, carry;
wire s1,s0;
fullDiff teste(s0, s1, a, b, carry);
initial begin
$display("Exemplo0804 - Felipe Augusto Morais Silva- 748473");
$display("Test ALU's inequality test");
$display("   a       b =   s0     s1");
$monitor("%6b    %6b = %6b    %6b", a, b, s0, s1);
           a = 6'b000000; b = 6'b000001; 
		#1 a = 6'b000000; b = 6'b000010; 
		#1 a = 6'b000000; b = 6'b000011; 
		#1 a = 6'b000000; b = 6'b000100; 
		#1 a = 6'b000000; b = 6'b000101; 
		#1 a = 6'b000000; b = 6'b000110; 
		#1 a = 6'b000000; b = 6'b000111; 
		#1 a = 6'b000000; b = 6'b010001; 
		#1 a = 6'b000000; b = 6'b010010; 
		#1 a = 6'b000000; b = 6'b010011; 
		#1 a = 6'b000000; b = 6'b010100; 
		#1 a = 6'b000000; b = 6'b101101; 
		#1 a = 6'b000000; b = 6'b101110; 
		#1 a = 6'b000000; b = 6'b101111; 
		#1 a = 6'b000000; b = 6'b110000; 
		#1 a = 6'b000000; b = 6'b110001; 
		#1 a = 6'b000000; b = 6'b110110; 
		#1 a = 6'b000000; b = 6'b110111; 
		#1 a = 6'b000000; b = 6'b111000; 
		#1 a = 6'b000000; b = 6'b111001; 
		#1 a = 6'b000000; b = 6'b111010; 
		#1 a = 6'b000000; b = 6'b111011; 
		#1 a = 6'b000000; b = 6'b111100; 
		#1 a = 6'b000000; b = 6'b111101; 
		#1 a = 6'b000000; b = 6'b111110; 
		#1 a = 6'b000000; b = 6'b111111; 

		#1 a = 6'b000010; b = 6'b111111; 
		#1 a = 6'b000011; b = 6'b111111; 
		#1 a = 6'b000100; b = 6'b111111; 
		#1 a = 6'b000101; b = 6'b111111; 
		#1 a = 6'b000110; b = 6'b111111; 
		#1 a = 6'b000111; b = 6'b111111; 
		#1 a = 6'b001000; b = 6'b111111; 
		#1 a = 6'b001001; b = 6'b111111; 
		#1 a = 6'b001010; b = 6'b111111; 
		#1 a = 6'b001011; b = 6'b111111; 
		#1 a = 6'b001100; b = 6'b111111; 
		#1 a = 6'b001101; b = 6'b111111; 
		#1 a = 6'b001110; b = 6'b111111; 
		#1 a = 6'b001111; b = 6'b111111; 
		#1 a = 6'b010000; b = 6'b111111; 
		#1 a = 6'b010001; b = 6'b111111; 
		#1 a = 6'b010010; b = 6'b111111; 
		#1 a = 6'b010011; b = 6'b111111; 
		#1 a = 6'b010100; b = 6'b111111; 
		#1 a = 6'b010101; b = 6'b111111; 
		#1 a = 6'b010110; b = 6'b111111; 
		#1 a = 6'b010111; b = 6'b111111; 
		#1 a = 6'b011000; b = 6'b111111; 
		#1 a = 6'b011001; b = 6'b111111; 
		#1 a = 6'b011010; b = 6'b111111; 
		#1 a = 6'b011011; b = 6'b111111; 
		#1 a = 6'b011100; b = 6'b111111; 
		#1 a = 6'b011101; b = 6'b111111; 
		#1 a = 6'b011110; b = 6'b111111; 
		#1 a = 6'b011111; b = 6'b111111; 
		#1 a = 6'b100000; b = 6'b111111; 
		#1 a = 6'b100001; b = 6'b111111; 
		#1 a = 6'b100010; b = 6'b111111; 
		#1 a = 6'b100011; b = 6'b111111; 
		#1 a = 6'b100100; b = 6'b111111; 
		#1 a = 6'b100101; b = 6'b111111; 
		#1 a = 6'b100110; b = 6'b111111; 
		#1 a = 6'b100111; b = 6'b111111; 
		#1 a = 6'b101000; b = 6'b111111; 
		#1 a = 6'b101001; b = 6'b111111; 
		#1 a = 6'b101010; b = 6'b111111; 
		#1 a = 6'b101011; b = 6'b111111; 
		#1 a = 6'b111110; b = 6'b111111; 
		#1 a = 6'b111111; b = 6'b111111; 

		#1 a = 6'b100010; b = 6'b100010; 
		#1 a = 6'b100011; b = 6'b100011; 
		#1 a = 6'b100100; b = 6'b100100; 
		#1 a = 6'b100101; b = 6'b100101; 
		#1 a = 6'b000001; b = 6'b000001; 
		#1 a = 6'b111111; b = 6'b111111; 
		#1 a = 6'b100010; b = 6'b100010; 
		#1 a = 6'b100011; b = 6'b100011; 
		#1 a = 6'b100100; b = 6'b100100; 
		#1 a = 6'b100101; b = 6'b100101; 
		#1 a = 6'b000001; b = 6'b000001; 
		#1 a = 6'b111111; b = 6'b111111; 

end
endmodule // test_fullAdder
