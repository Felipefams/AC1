// -------------------------
// Arquitetura de Computadores I - Guia_05
// Nome: Daniel da Silveira Moreira
// Matricula: 748714
// -------------------------


// m a b s
// 0 0 0 0
// 1 0 1 1 <- a'.b
// 2 1 0 0
// 3 1 1 0



module f5a ( output s, input a, input b );

// definir dado local
    wire not_a;
// descrever por portas
    not NOT1 ( not_a, a );
    and AND1 ( s, not_a, b );

endmodule


module f5b ( output s, input a, input b );

// descrever por expressao
    assign s = ~a & b;

endmodule


module test_f5;

// definir dados
 reg x;
 reg y;
 wire s;
 f5a moduloA ( s, x, y );
 f5b moduloB ( s, x, y );
// parte principal
 initial
    begin : main
        $display("------- Exemplo_0502 -------\n");
        $display("~a & b = s\n");
        // projetar testes do modulo
        $monitor("%b %b %6b", x, y, s);
        x = 1'b0; y = 1'b0;
        #1 x = 1'b0; y = 1'b1;
        #1 x = 1'b1; y = 1'b0;
        #1 x = 1'b1; y = 1'b1;
    end
endmodule // test_f