/*
	Pontificia Universidade Catolica de Minas Gerais
	Instituto de Ciencias Exatas e Informatica – ICEI
	
	Arquitetura de Computadores I
	Tema: Introducao 'a linguagem Verilog e simulacao em Logisim
	
	Guia 13 - 28/10/2021
	
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
	Contador assincrono decrescente com 5 bits de comprimento
*/
module contD5 ( s1, in, pulse, clr );
	output [4:0] s1;
	input  in;
	input  pulse;
	input  clr;
	wire q;

	jkff jk1(q, s1[0], in, in, pulse, 1'b0, clr);
	jkff jk2(q, s1[1], in, in, s1[0], 1'b0, clr);
	jkff jk3(q, s1[2], in, in, s1[1], 1'b0, clr);
	jkff jk4(q, s1[3], in, in, s1[2], 1'b0, clr);
	jkff jk5(q, s1[4], in, in, s1[3], 1'b0, clr);
	
endmodule //contD5 

module exercicio01;
	//--------------------definir dados
	reg clr, in, pulse;    
	wire[4:0] s;
	
	contD5 CONT1 (s, in, pulse, clr);
	
	//------------------parte principal
	initial
		begin : main
			$display ("Exercicio 01 - Danielle Dias Vieira - 723185");
			$display ("Contador assincrono decrescente com 5 bits de comprimento");
			$display ("");
			$display ("Time   Pulse   In   CLR   Binario  Decimal");
			
			//initial values
			pulse = 0;
			clr = 0;  
			in = 0;

			$monitor ("%2d  - %4b %6b %4b %9b %6d", $time, pulse, in, clr, s, s);
					
			//input signal changing
			/**/
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
			
			#1 clr = 1'b1; 
			#1 clr = 1'b0;

		end
endmodule //fim exercicio01

/*
Exercicio 01 - Danielle Dias Vieira - 723185
Contador assincrono decrescente com 5 bits de comprimento

Time   Pulse   In   CLR   Binario  Decimal
 0  -    0      0    0     xxxxx      x
 1  -    0      0    1     11111     31
 2  -    0      0    0     11111     31
 3  -    1      1    0     11110     30
 4  -    0      1    0     11110     30
 5  -    1      1    0     11101     29
 6  -    0      1    0     11101     29
 7  -    1      1    0     11100     28
 8  -    0      1    0     11100     28
 9  -    1      1    0     11011     27
10  -    0      1    0     11011     27
11  -    1      1    0     11010     26
12  -    0      1    0     11010     26
13  -    1      1    0     11001     25
14  -    0      1    0     11001     25
15  -    1      1    0     11000     24
16  -    0      1    0     11000     24
17  -    1      1    0     10111     23
18  -    0      1    0     10111     23
19  -    1      1    0     10110     22
20  -    0      1    0     10110     22
21  -    1      1    0     10101     21
22  -    0      1    0     10101     21
23  -    1      0    0     10101     21
24  -    0      0    0     10101     21
25  -    1      1    0     10100     20
26  -    0      1    0     10100     20
27  -    1      1    0     10011     19
28  -    0      1    0     10011     19
29  -    1      1    0     10010     18
30  -    0      1    0     10010     18
31  -    1      1    0     10001     17
32  -    0      1    0     10001     17
33  -    1      1    0     10000     16
34  -    0      1    0     10000     16
35  -    1      1    0     01111     15
36  -    0      1    0     01111     15
37  -    1      1    0     01110     14
38  -    0      1    0     01110     14
39  -    1      1    0     01101     13
40  -    0      1    0     01101     13
41  -    1      1    0     01100     12
42  -    0      1    0     01100     12
43  -    1      1    0     01011     11
44  -    0      1    0     01011     11
45  -    1      0    0     01011     11
46  -    0      1    0     01011     11
47  -    1      1    0     01010     10
48  -    0      1    0     01010     10
49  -    1      1    0     01001      9
50  -    0      1    0     01001      9
51  -    1      1    0     01000      8
52  -    0      1    0     01000      8
53  -    1      1    0     00111      7
54  -    0      1    0     00111      7
55  -    1      1    0     00110      6
56  -    0      1    0     00110      6
57  -    1      1    0     00101      5
58  -    0      1    0     00101      5
59  -    1      1    0     00100      4
60  -    0      1    0     00100      4
61  -    1      1    0     00011      3
62  -    0      1    0     00011      3
63  -    1      1    0     00010      2
64  -    0      1    0     00010      2
65  -    1      1    0     00001      1
66  -    0      1    0     00001      1
67  -    1      1    0     00000      0
68  -    0      1    0     00000      0
69  -    1      1    0     11111     31
70  -    0      1    0     11111     31
71  -    1      1    0     11110     30
72  -    0      1    0     11110     30
73  -    1      1    0     11101     29
74  -    0      1    0     11101     29
75  -    0      1    1     11111     31
76  -    0      1    0     11111     31
*/
