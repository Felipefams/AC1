/*
nome: Larissa Botelho  matrícula: 743970
Guia_0104.v
*/

module Guia_0104;
reg [7:0] x = 0; // binary
integer dec = 0;
// decimal
reg [7:0] a = 8'b0010011; // binary (bits)
reg [7:0] b = 8'b0011101; // binary (bits)
reg [7:0] c = 8'b0101001; // binary (bits)
reg [7:0] d = 8'b0110101; // binary (bits)
reg [7:0] e = 8'b0111001; // binary (bits)
    initial begin
        $display ( "Guia_0104 - Tests"  );

        $display ( "a = %8b" , a );
        x = a;
        $display ( "x = [%2b] [%2b] [%2b] [%2b] = %x %x %x %x", x[7:6], x[5:4], x[3:2], x[1:0],x[7:6], x[5:4], x[3:2], x[1:0]  );

        $display ( "b = %8b" , b );
        x = b;
        $display ( "x = [%2b] [%3b] [%3b] = %x %x %x", x[7:6], x[5:3], x[2:0], x[7:6], x[5:3], x[2:0] );

        $display ( "c = %8b" , c );
        x = c;
        $display ( "x = [%4b] [%4b] = %x %x", x[7:4], x[3:0], x[7:4], x[3:0] );

        $display ( "d = %8b" , d );
        x = d;
        $display ( "x = [%2b] [%3b] [%3b] = %x %x %x", x[7:6], x[5:3], x[2:0], x[7:6], x[5:3], x[2:0] );

        $display ( "e = %8b" , e );
        x = e;
        $display ( "x = [%2b] [%2b] [%2b] [%2b] = %x %x %x %x", x[7:6], x[5:4], x[3:2], x[1:0],x[7:6], x[5:4], x[3:2], x[1:0]  );
        $finish;
    end
endmodule


/* saídas
o único que deu certo foi a letra C e não consegui ajustar o código pra outras bases

Guia_0104 - Tests
a = 00010011
x = [00] [01] [00] [11] = 0 1 0 3
b = 00011101
x = [00] [011] [101] = 0 3 5
c = 00101001
x = [0010] [1001] = 2 9
d = 00110101
x = [00] [110] [101] = 0 6 5
e = 00111001
x = [00] [11] [10] [01] = 0 3 2 1

 */