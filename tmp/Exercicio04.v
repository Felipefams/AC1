/*
	Pontificia Universidade Catolica de Minas Gerais
	Instituto de Ciencias Exatas e Informatica – ICEI
	
	Arquitetura de Computadores I
	Tema: Introducao 'a linguagem Verilog e simulacao em Logisim
	
	Guia 13 - 29/10/2021
	
	Matricula: 723185
	Aluno: Danielle Dias Vieira
*/

/*
	Flip-Flop JK
*/

module jkff (output q , output qnot,
             input  j , input  k,
             input clk, input  preset, input clear);

	reg q, qnot;

	always @ ( posedge clk or posedge preset or posedge clear )
		begin
			if (clear)
			begin q<=0; qnot<=1; end
			else
			  if (preset)
			  begin q<=1; qnot<=0; end
			  else
				if (j&~k)
				begin q<=1; qnot<=0; end
				else
				  if (~j&k)
				  begin q<=0; qnot<=1; end
				  else
					if(j&k)
					begin q<=~q; qnot<=~qnot; end
		end
endmodule //fim jkff

/*
	Contador assíncrono decádico decrescente com 4 bits de comprimento
*/
module contDecrescDecad4 ( s1, in, pulse, clr );
	output [3:0] s1;
	input  in;
	input  pulse;
	input  clr;
	wire [3:0] qnot;

	jkff jk1(s1[0], qnot[0], in, in, pulse, (clr | (~(qnot[0]) & qnot[1] & ~(qnot[2]) & qnot[3])), 1'b0);
	jkff jk2(s1[1], qnot[1], in, in, s1[0], (clr | (~(qnot[0]) & qnot[1] & ~(qnot[2]) & qnot[3])), 1'b0);
	jkff jk3(s1[2], qnot[2], in, in, s1[1], (clr | (~(qnot[0]) & qnot[1] & ~(qnot[2]) & qnot[3])), 1'b0);
	jkff jk4(s1[3], qnot[3], in, in, s1[2], (clr | (~(qnot[0]) & qnot[1] & ~(qnot[2]) & qnot[3])), 1'b0);
	
endmodule //contDecrescDecad4

module exercicio04;
	//--------------------definir dados
	reg clr, in, pulse;    
	wire[3:0] s;
	
	contDecrescDecad4 CONT1 (s, in, pulse, clr);
	
	//------------------parte principal
	initial
		begin : main
			$display ("Exercicio 04 - Danielle Dias Vieira - 723185");
			$display ("Contador assincrono decadico decrescente com 4 bits de comprimento");
			$display ("");
			$display ("Time   Pulse   In   Preset   Binario  Decimal");
			
			//initial values
			pulse = 0;
			clr = 0;  
			in = 0;

			$monitor ("%2d  - %4b %6b %5b %11b %6d", $time, pulse, in, clr, s, s);
					
			//input signal changing
			#1 clr = 1'b1; 
			#1 clr = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			
			#1 in = 1'b0; pulse = 1'b1;
			#1 in = 1'b0; pulse = 1'b0;
			
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			
			#1 in = 1'b0; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			#1 in = 1'b1; pulse = 1'b1;
			#1 in = 1'b1; pulse = 1'b0;
			
			#1 clr = 1'b1; 
			#1 clr = 1'b0;

		end
endmodule //fim exercicio04

/*
Exercicio 04 - Danielle Dias Vieira - 723185
Contador assincrono decadico decrescente com 4 bits de comprimento

Time   Pulse   In   Preset   Binario  Decimal
 0  -    0      0     0        xxxx      x
 1  -    0      0     1        1111     15
 2  -    0      0     0        1111     15
 3  -    1      1     0        1110     14
 4  -    0      1     0        1110     14
 5  -    1      1     0        1101     13
 6  -    0      1     0        1101     13
 7  -    1      1     0        1100     12
 8  -    0      1     0        1100     12
 9  -    1      1     0        1011     11
10  -    0      1     0        1011     11
11  -    1      1     0        1010     10
12  -    0      1     0        1010     10
13  -    1      1     0        1001      9
14  -    0      1     0        1001      9
15  -    1      1     0        1000      8
16  -    0      1     0        1000      8
17  -    1      1     0        0111      7
18  -    0      1     0        0111      7
19  -    1      1     0        0110      6
20  -    0      1     0        0110      6
21  -    1      1     0        1111     15
22  -    0      1     0        1111     15
23  -    1      0     0        1111     15
24  -    0      0     0        1111     15
25  -    1      1     0        1110     14
26  -    0      1     0        1110     14
27  -    1      1     0        1101     13
28  -    0      1     0        1101     13
29  -    1      1     0        1100     12
30  -    0      1     0        1100     12
31  -    1      1     0        1011     11
32  -    0      1     0        1011     11
33  -    1      1     0        1010     10
34  -    0      1     0        1010     10
35  -    1      1     0        1001      9
36  -    0      1     0        1001      9
37  -    1      1     0        1000      8
38  -    0      1     0        1000      8
39  -    1      1     0        0111      7
40  -    0      1     0        0111      7
41  -    1      1     0        0110      6
42  -    0      1     0        0110      6
43  -    1      1     0        1111     15
44  -    0      1     0        1111     15
45  -    1      0     0        1111     15
46  -    0      1     0        1111     15
47  -    1      1     0        1110     14
48  -    0      1     0        1110     14
49  -    1      1     0        1101     13
50  -    0      1     0        1101     13
51  -    1      1     0        1100     12
52  -    0      1     0        1100     12
53  -    1      1     0        1011     11
54  -    0      1     0        1011     11
55  -    0      1     1        1111     15
56  -    0      1     0        1111     15

*/
