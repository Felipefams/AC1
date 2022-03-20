/*

• Nome: Pedro Henrique Lopes Costa
• Matrícula: 753045
• Disciplina: AC I - Theldo Cruz
• Turma: Ciência da Computação - 2022/1 - Manhã - Coração Eucarístico

-------------------------------------------------------------------------------------------------------------------------------------
   
Previsão de testes

m     a b s
0     0 0 0
1     0 1 1 
2     1 0 0
3     1 1 0

// ------------------------------------------------------------------------- */

// Estado dos elementos
module f5a(output s, input a, b);

   wire not_a;

   not NOT1(not_a, a);
   and AND1(s, not_a, b);

endmodule

// Expressão
module f5b (output s, input a, b);
   assign s = ~a & b;
endmodule

// ------------------------------------------------------------------------- //

module test_f5;

   reg x;
   reg y;
   
   wire s;
   
   f5a moduloA(s, x, y);
   f5b moduloB(s, x, y);

   initial begin : main
      $display("\n________ Guia_0501 ________\n");
      $display("~a & b = s\n\na  b  s");
      $monitor("%b  %b  %b ", x, y, s);

      x = 1'b0; y = 1'b0;
      #1 x = 1'b0; y = 1'b1;
      #1 x = 1'b1; y = 1'b0;
      #1 x = 1'b1; y = 1'b1;
   
   end

endmodule

// ------------------------------------------------------------------------- //

/*
   ________ Guia_0501 ________

   ~a & b = s

   a  b  s
   0  0  0
   0  1  1
   1  0  0
   1  1  0

*/