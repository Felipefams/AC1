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
	Contador em anel com 5 bits de comprimento
*/
module contRing5 ( s1, clk, clr );
	output [4:0] s1;
	input  in;
	input  clk;
	input  clr;
	wire qnot;

	jkff jk1(s1[0], qnot, s1[4], ~s1[4], clk, clr, 1'b0);
	jkff jk2(s1[1], qnot, s1[0], ~s1[0], clk, 1'b0, clr);
	jkff jk3(s1[2], qnot, s1[1], ~s1[1], clk, 1'b0, clr);
	jkff jk4(s1[3], qnot, s1[2], ~s1[2], clk, 1'b0, clr);
	jkff jk5(s1[4], qnot, s1[3], ~s1[3], clk, 1'b0, clr);
	
endmodule //contRing5 

module exercicio06;
	//--------------------definir dados
	reg clr, clk;    
	wire[4:0] s;
	
	contRing5 CONT1 (s, clk, clr);
	
	//------------------parte principal
	initial
		begin : main
			$display ("Exercicio 06 - Danielle Dias Vieira - 723185");
			$display ("Contador em anel com 5 bits de comprimento");
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
endmodule //fim exercicio06

/*
Exercicio 06 - Danielle Dias Vieira - 723185
Contador em anel com 5 bits de comprimento

Time    CLK    CLR   Binario  Decimal
 0  -    0      0     xxxxx      x
 1  -    0      1     00001      1
 2  -    0      0     00001      1
 3  -    1      0     00010      2
 4  -    0      0     00010      2
 5  -    1      0     00100      4
 6  -    0      0     00100      4
 7  -    1      0     01000      8
 8  -    0      0     01000      8
 9  -    1      0     10000     16
10  -    0      0     10000     16
11  -    1      0     00001      1
12  -    0      0     00001      1
13  -    1      0     00010      2
15  -    0      0     00010      2
16  -    1      0     00100      4
17  -    0      0     00100      4
18  -    1      0     01000      8
19  -    0      0     01000      8
20  -    1      0     10000     16
21  -    0      0     10000     16
22  -    1      0     00001      1
23  -    0      0     00001      1
24  -    1      0     00010      2
25  -    0      0     00010      2
26  -    1      0     00100      4
27  -    0      0     00100      4
28  -    0      1     00001      1
29  -    0      0     00001      1
*/
