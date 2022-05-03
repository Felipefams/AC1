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
	Contador em anel torcido com 5 bits de comprimento
*/
module contRingTwisted5 ( s1, clk, clr );
	output [4:0] s1;
	input  in;
	input  clk;
	input  clr;
	wire [1:0] qnot;

	jkff jk1(s1[0], qnot[0], qnot[1], ~qnot[1], clk, clr, 1'b0);
	jkff jk2(s1[1], qnot[0], s1[0], ~s1[0], clk, 1'b0, clr);
	jkff jk3(s1[2], qnot[0], s1[1], ~s1[1], clk, 1'b0, clr);
	jkff jk4(s1[3], qnot[0], s1[2], ~s1[2], clk, 1'b0, clr);
	jkff jk5(s1[4], qnot[1], s1[3], ~s1[3], clk, 1'b0, clr);
	
endmodule //contRingTwisted5 

module exercicio07;
	//--------------------definir dados
	reg clr, clk;    
	wire[4:0] s;
	
	contRingTwisted5 CONT1 (s, clk, clr);
	
	//------------------parte principal
	initial
		begin : main
			$display ("Exercicio 07 - Danielle Dias Vieira - 723185");
			$display ("Contador em anel torcido com 5 bits de comprimento");
			$display ("");
			$display ("Time    CLK    CLR   Binario  Decimal");
			
			//initial values
			clk = 0;
			clr = 0;  

			$monitor ("%2d  - %4b %6b %9b %6d", $time, clk, clr, s, s);
					
			#1 clr = 1'b1; 
			#1 clr = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			#1 clk = 1'b1;
			#1 clk = 1'b0;
			
			#1 clr = 1'b1; 
			#1 clr = 1'b0;

		end
endmodule //fim exercicio07

/*
Exercicio 07 - Danielle Dias Vieira - 723185
Contador em anel torcido com 5 bits de comprimento

Time    CLK    CLR   Binario  Decimal
 0  -    0      0     xxxxx      x
 1  -    0      1     00001      1
 2  -    0      0     00001      1
 3  -    1      0     00011      3
 4  -    0      0     00011      3
 5  -    1      0     00111      7
 6  -    0      0     00111      7
 7  -    1      0     01111     15
 8  -    0      0     01111     15
 9  -    1      0     11111     31
10  -    0      0     11111     31
11  -    1      0     11110     30
12  -    0      0     11110     30
13  -    1      0     11100     28
15  -    0      0     11100     28
16  -    1      0     11000     24
17  -    0      0     11000     24
18  -    1      0     10000     16
19  -    0      0     10000     16
20  -    1      0     00000      0
21  -    0      0     00000      0
22  -    1      0     00001      1
23  -    0      0     00001      1
24  -    1      0     00011      3
25  -    0      0     00011      3
26  -    1      0     00111      7
27  -    0      0     00111      7
28  -    0      1     00001      1
29  -    0      0     00001      1
*/
