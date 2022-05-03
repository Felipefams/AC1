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
	Contador assíncrono decádico crescente com 4 bits de comprimento
*/
module contCrescDecad4 ( s1, in, pulse, clr );
	output [3:0] s1;
	input  in;
	input  pulse;
	input  clr;
	wire [3:0] qnot;

	jkff jk1(s1[0], qnot[0], in, in, pulse, 1'b0, (clr | (~(s1[0]) & s1[1] & ~(s1[2]) & s1[3])));
	jkff jk2(s1[1], qnot[1], in, in, qnot[0], 1'b0, (clr | (~(s1[0]) & s1[1] & ~(s1[2]) & s1[3])));
	jkff jk3(s1[2], qnot[2], in, in, qnot[1], 1'b0, (clr | (~(s1[0]) & s1[1] & ~(s1[2]) & s1[3])));
	jkff jk4(s1[3], qnot[3], in, in, qnot[2], 1'b0, (clr | (~(s1[0]) & s1[1] & ~(s1[2]) & s1[3])));
	
endmodule //contCrescDecad4 

module exercicio03;
	//--------------------definir dados
	reg clr, in, pulse;    
	wire[3:0] s;
	
	contCrescDecad4 CONT1 (s, in, pulse, clr);
	
	//------------------parte principal
	initial
		begin : main
			$display ("Exercicio 03 - Danielle Dias Vieira - 723185");
			$display ("Contador assincrono decadico crescente com 4 bits de comprimento");
			$display ("");
			$display ("Time   Pulse   In   CLR   Binario  Decimal");
			
			//initial values
			pulse = 0;
			clr = 0;  
			in = 0;

			$monitor ("%2d  - %4b %6b %4b %9b %6d", $time, pulse, in, clr, s, s);
					
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
endmodule //fim exercicio03

/*
Exercicio 03 - Danielle Dias Vieira - 723185
Contador assincrono decadico crescente com 4 bits de comprimento

Time   Pulse   In   CLR   Binario  Decimal
 0  -    0      0    0      xxxx      x
 1  -    0      0    1      0000      0
 2  -    0      0    0      0000      0
 3  -    1      1    0      0001      1
 4  -    0      1    0      0001      1
 5  -    1      1    0      0010      2
 6  -    0      1    0      0010      2
 7  -    1      1    0      0011      3
 8  -    0      1    0      0011      3
 9  -    1      1    0      0100      4
10  -    0      1    0      0100      4
11  -    1      1    0      0101      5
12  -    0      1    0      0101      5
13  -    1      1    0      0110      6
14  -    0      1    0      0110      6
15  -    1      1    0      0111      7
16  -    0      1    0      0111      7
17  -    1      1    0      1000      8
18  -    0      1    0      1000      8
19  -    1      1    0      1001      9
20  -    0      1    0      1001      9
21  -    1      1    0      0000      0
22  -    0      1    0      0000      0
23  -    1      0    0      0000      0
24  -    0      0    0      0000      0
25  -    1      1    0      0001      1
26  -    0      1    0      0001      1
27  -    1      1    0      0010      2
28  -    0      1    0      0010      2
29  -    1      1    0      0011      3
30  -    0      1    0      0011      3
31  -    1      1    0      0100      4
32  -    0      1    0      0100      4
33  -    1      1    0      0101      5
34  -    0      1    0      0101      5
35  -    1      1    0      0110      6
36  -    0      1    0      0110      6
37  -    1      1    0      0111      7
38  -    0      1    0      0111      7
39  -    1      1    0      1000      8
40  -    0      1    0      1000      8
41  -    1      1    0      1001      9
42  -    0      1    0      1001      9
43  -    1      1    0      0000      0
44  -    0      1    0      0000      0
45  -    1      0    0      0000      0
46  -    0      1    0      0000      0
47  -    1      1    0      0001      1
48  -    0      1    0      0001      1
49  -    1      1    0      0010      2
50  -    0      1    0      0010      2
51  -    1      1    0      0011      3
52  -    0      1    0      0011      3
53  -    1      1    0      0100      4
54  -    0      1    0      0100      4
55  -    0      1    1      0000      0
56  -    0      1    0      0000      0
*/
