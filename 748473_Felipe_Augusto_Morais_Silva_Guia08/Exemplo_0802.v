// -------------------------
// Exemplo_0802 - HALF SUBTRACTOR 
// Nome:Felipe Augusto Morais Silva 
// Matricula:748473 
// -------------------------
// -------------------------
// half subtractor
// -------------------------
module halfSub (output s1, output s0, input a, input b);
wire a_;
xor(s0, a,b);
not(a_,a);
and(s1,a_,b);
endmodule // halfAdder
// -------------------------
// full subtractor
// ------------------------- parte principal
module halfSubTeste;
reg a, b;
wire different, borrow;
halfSub teste(different, borrow, a, b);
initial begin
$display("Exemplo0802 - Felipe Augusto Morais Silva- 748473");
$display("Test ALU's half subtractor");
$display("   a   -    b =   ans");
$monitor("%4b   - %4b = %4b", a, b, different);
	a = 1'b0;
	b = 1'b0;
	#100
	a = 1'b1; 
	b = 1'b0;
	#100
	a = 1'b0; 
	b = 1'b1;
	#100
	a = 1'b1; 
	b = 1'b1;

end
endmodule // test_fullAdder
// half-adder test_bench by Md. Nahidul Islam
// module tb_half_adder();
// reg a, b;
// wire s, c;
// half_adder ckt(a,b,s,c);
//initial 
//begin
	// a = 1'b0;
	// b = 1'b0;
	// #100
	// a = 1'b1; 
	// b = 1'b0;
	// #100
	// a = 1'b0; 
	// b = 1'b1;
	// #100
	// a = 1'b1; 
	// b = 1'b1;


//end 
