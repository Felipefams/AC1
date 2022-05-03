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
	Flip-Flop T
*/

module tff ( output q, output qnot,
			 input t, input clk,
			 input preset, input clear );
	
	reg q, qnot;
	
	always @( posedge clk or clear or preset)
		begin
			if ( clear )
				begin q <= 1'b0; qnot <= 1'b1; #1; end
			else if ( preset )
				begin q <= 1'b1; qnot <= 1'b0; end
			else
				if ( t ) 
					begin #1; q <= ~q; qnot <= ~qnot;  end
		end
endmodule // tff


/* 
	Contador síncrono módulo 7
*/
module contSincrono7 ( s1, in, clk, clr ); 
	output [2:0] s1;
	input  in;
	input  clk;
	input  clr;
	wire qnot, x, y;
	
	and AND1 (x, s1[0], s1[1], s1[2]);
	or  OR1  (y, x, clr);
	tff T1(s1[0], qnot, in, clk, 1'b0, y);
	
	and AND2 (x, s1[0], s1[1], s1[2]);
	or  OR2  (y, x, clr);
	tff T2(s1[1], qnot, s1[0], clk, 1'b0, y);
	
	and AND3 (x, s1[0], s1[1], s1[2]);
	or  OR3  (y, x, clr);
	tff T3(s1[2], qnot, (s1[0] & s1[1]), clk, 1'b0, y);
	
endmodule //contSincrono7

module exercicio05;
	//--------------------definir dados
	reg clr, in, clk;    
	wire[2:0] s;
	
	contSincrono7 CONT1 (s, in, clk, clr);
	
	//------------------parte principal
	initial
		begin : main
			$display ("Exercicio 05 - Danielle Dias Vieira - 723185");
			$display ("Contador sincrono modulo 7");
			$display ("");
			$display ("Time   CLK   In   CLR   Binario  Decimal");
			
			//initial values
			clk = 0;
			clr = 0;  
			in = 0;

			$monitor ("%2d  - %4b %6b %4b %9b %6d", $time, clk, in, clr, s, s);
					
			//input signal changing
			#1 clr = 1'b1; 
			#1 clr = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			
			#1 in = 1'b0; clk = 1'b1;
			#1 in = 1'b0; clk = 1'b0;
			
			#1 in = 1'b0; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			#1 in = 1'b1; clk = 1'b1;
			#1 in = 1'b1; clk = 1'b0;
			
			#1 clr = 1'b1; 
			#1 clr = 1'b0;

		end
endmodule //fim exercicio05

/*
Exercicio 05 - Danielle Dias Vieira - 723185
Contador sincrono modulo 7

Time   CLK   In   CLR   Binario  Decimal
 0  -    0      0    0       xxx      x
 1  -    0      0    1       000      0
 2  -    0      0    0       000      0
 3  -    1      1    0       000      0
 4  -    0      1    0       001      1
 5  -    1      1    0       001      1
 6  -    0      1    0       010      2
 7  -    1      1    0       010      2
 8  -    0      1    0       011      3
 9  -    1      1    0       011      3
10  -    0      1    0       100      4
11  -    1      1    0       100      4
12  -    0      1    0       101      5
13  -    1      1    0       101      5
14  -    0      1    0       110      6
15  -    1      1    0       110      6
16  -    0      1    0       000      0
17  -    1      1    0       000      0
18  -    0      1    0       000      0
19  -    1      1    0       000      0
20  -    0      1    0       001      1
21  -    1      1    0       001      1
22  -    0      1    0       010      2
23  -    1      0    0       010      2
24  -    0      0    0       010      2
25  -    1      0    0       010      2
26  -    0      1    0       010      2
27  -    1      1    0       010      2
28  -    0      1    0       011      3
29  -    1      1    0       011      3
30  -    0      1    0       100      4
31  -    1      1    0       100      4
32  -    0      1    0       101      5
33  -    1      1    0       101      5
34  -    0      1    0       110      6
35  -    0      1    1       000      0
36  -    0      1    0       000      0
37  -    0      1    0       001      1
*/
