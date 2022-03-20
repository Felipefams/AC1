/* Exemplo_0506 - GATES
   Nome: Luisa Nogueira Campos Silva Souza
  Matricula: 747560 */

/*
    m a b s
    0 0 0 1
    1 0 1 1 
    2 1 0 1
    3 1 1 0 
*/

// -------------------------
module f5a (output s, input a, b);

    wire not_b;
    wire not_a;

    not NOT2 ( not_b, b);
    not NOT1 ( not_a, a);
    or  OR1 ( s, not_a, not_b );

endmodule 

// expressao

module f5b ( output s, input a, b);

    assign s = ~a | ~b;

endmodule // f5b 

module test_f5;

    reg x; //  definir dados
    reg y;

    wire s;

    f5a moduloA ( s, x, y );
    f5b moduloB ( s, x, y );

//parte principal
    initial begin : main
        $display("Exemplo_0506\n");
        $display(" ~( a & b) = s\n\n a b  s");

        // projetar testes do modulo
        $monitor(" %b %b  %b ", x, y, s);

           x = 1'b0; y = 1'b0;
        #1 x = 1'b0; y = 1'b1;
        #1 x = 1'b1; y = 1'b0;
        #1 x = 1'b1; y = 1'b1;

    end

endmodule // test_f5