/*
Guia_0202
*/
/*
 * Esses codigos em verilog sao muito macantes, to tentando fazer tudo pelo editor default
 * do arch linux enquanto eu nao baixo o vim, mas consome muito tempo trocar o nome de
 * cada variavel sem atalho. To com o mau pressentimento que arquitetura vai ser muito mais
 * dificil que aeds2 esse semestre.
 */
module Guia_0202;
// define data
//a)
real a = 0.625; //decimal
//b)1.125
integer b1 = 1;
real b2 = 0.125;
//c)1.03125
integer c1 = 1;
real c2 = 0.03125;
//d)3.875
integer d1 = 3;
real d2 = 0.875;
//e)11.375
integer e1 = 11;
real e2 = 0.375;
integer y = 7 ; // counter
reg [7:0] ba = 0, bb = 0, bc = 0, bd = 0, be = 0; // binary
reg [4:0] pivot = 0;
// actions
initial
begin : main
    $display ( "Guia_0202 - Tests" );
    while ( a > 0 && y >= 0 )
        begin
            if ( a*2 >= 1 )
                begin
                ba[y] = 1;
                a = a*2.0 - 1.0;
                end
            else
                begin
                ba[y] = 0;
                a = a*2.0;
                end // end if
            y=y-1;
        end // end while
        pivot = 0;
        $display ( "a = %b.%8b",pivot, ba);
        y = 7;
    while ( b2 > 0 && y >= 0 )
        begin
            if (b2*2 >= 1 )
                begin
                bb[y] = 1;
                b2 = b2*2.0 - 1.0;
                end
            else
                begin
                bb[y] = 0;
                b2 = b2*2.0;
                end // end if
            y=y-1;
        end // end while
        pivot = b1;
        $display ( "b = %b.%8b",pivot, bb);
        y = 7;
    while ( c2 > 0 && y >= 0 )
        begin
            if (c2*2 >= 1 )
                begin
                bc[y] = 1;
                c2 = c2*2.0 - 1.0;
                end
            else
                begin
                bc[y] = 0;
                c2 = c2*2.0;
                end // end if
            y=y-1;
        end // end while
        pivot = c1;
        $display ( "c = %b.%8b",pivot,bc);
        y = 7;
    while ( d2 > 0 && y >= 0 )
        begin
            if (d2*2 >= 1 )
                begin
                bd[y] = 1;
                d2 = d2*2.0 - 1.0;
                end
            else
                begin
                bd[y] = 0;
                d2 = d2*2.0;
                end // end if
            y=y-1;
        end // end while
        pivot = d1;
        $display ( "d = %b.%8b",pivot, bd);
        y = 7;
    while ( e2 > 0 && y >= 0 )
        begin
            if (e2*2 >= 1 )
                begin
                be[y] = 1;
                e2 = e2*2.0 - 1.0;
                end
            else
                begin
                be[y] = 0;
                e2 = e2*2.0;
                end // end if
            y=y-1;
        end // end while
        pivot = e1;
        $display ( "e = %b.%8b", pivot,be);
end // main
endmodule // Guia_0202
