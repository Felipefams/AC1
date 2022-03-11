/*
Guia_0201
esse guia vai ficar igual codigo do primeiro periodo, pelo que eu to vendo.
if(a == 1)
    if(b == 1)
        if(a == 1)
            if
                if
                    if
*/
module Guia_0201;
// define data
    real xa,xb,xc,xd,xe = 0 ; // decimal
    real power2 = 1.0; // power of 2
    integer pivot = 0;
    integer z = 4; // counter2
    reg [4:0] a = 8'b10101;//reg [7:0] test = 8'b10100000; // binary (only fraction part, Big Endian)
    reg [4:0] b = 8'b01101;
    reg [4:0] c = 8'b11101;
    reg [0:0] d1 = 8'b1;   // como 1 em binario eh 1 mesmo, vou so printar o 1 na frente do d
    reg [4:0] d2 = 8'b10111;
    reg [1:0] e1 = 8'b11;
    reg [4:0] e2 = 8'b11110;
// actions
initial
begin : main
    $display ( "Guia_0201 - Tests" );
    //$display ( "b = 0.%8b", test );
//for part a
while ( z >= 0 )
    begin
        power2 = power2 / 2.0;
        //pega o o bit da posicao y, se ele for igual a 1, faz x+=pow(x,-y)
        if ( a[z] == 1 )
            begin
                xa = xa + power2;
            end
        if ( b[z] == 1 )
            begin
                xb = xb + power2;
            end
        if ( c[z] == 1 )
            begin
                xc = xc + power2;
            end
        if ( d2[z] == 1 )
            begin
                xd = xd + power2;
            end
        if ( e2[z] == 1 )
            begin
                xe = xe + power2;
            end

        z = z - 1;
    end // end while
    $display ( "a = %f", xa );
    $display ( "b = %f", xb );
    $display ( "c = %f", xc );
    pivot = d1;
    xd = xd + pivot;
    $display ( "d = %f", xd );
    pivot = e1;
    xe = xe + pivot;
    $display ( "e = %f", xe );
end // main
endmodule // Guia_0201
/*
 * eu ate tinha escrito uma funcao, mas tava dando um trabalho desumano.
 * tentei fazer function, task, nada foi. Ai eu vou so embolar tudo no codigo mesmo.
*/
