/* nome: Larissa Botelho de Souza matrícula: 743970 */
/*
Guia_0201
*/
module Guia_0201;
// define data
    real x = 0 ; // decimal
    real power2 = 1.0; // power of 2
    integer y = 7 ; // counter
    reg [15:0] a = 16'b00000000_10101000 ; // binary (only fraction part, Big Endian)
    reg [15:0] b = 16'b00000000_01101000;
    reg [15:0] c = 16'b00000000_11101000;
    reg [15:0] d = 16'b00000001_10111000;
    reg [15:0] e = 16'b00000011_11110000;
// actions
 initial begin : main
    $display ( "Guia_0201 - Tests" );
    
    while ( y >= 0 )
        begin
            power2 = power2 / 2.0;
            if ( a[y] == 1 )
                begin
                    x = x + power2;
                end
            y=y-1;
        end // end while
    $display ( "a = %f", b[15:8] + x );

    x=0;
    y=7;
    power2 = 1.0; 
    while ( y >= 0 )
        begin
            power2 = power2 / 2.0;
            if ( b[y] == 1 )
                begin
                    x = x + power2;
                end
            y=y-1;
        end // end while
    $display ( "b = %f", b[15:8] + x );

    x=0;
    y=7;
    power2 = 1.0; 
    while ( y >= 0 )
        begin
            power2 = power2 / 2.0;
            if ( c[y] == 1 )
                begin
                    x = x + power2;
                end
            y=y-1;
        end // end while
    $display ( "c = %f", b[15:8] + x );

    x=0;
    y=7;
    power2 = 1.0; 
    while ( y >= 0 )
        begin
            power2 = power2 / 2.0;
            if ( d[y] == 1 )
                begin
                    x = x + power2;
                end
            y=y-1;
        end // end while
    $display ( "d = %f", b[15:8] + x );

    x=0;
    y=7;
    power2 = 1.0;
    while ( y >= 0 )
        begin
            power2 = power2 / 2.0;
            if ( e[y] == 1 )
                begin
                    x = x + power2;
                end
            y=y-1;
        end // end while
    $display ( "e = %f", b[15:8] + x );
    end // main
endmodule // Guia_0201



module Guia_0202;
// define data
real a = 0.62500; // decimal
real x = 1.12500; // decimal
real c = 1.03125; // decimal
real d = 3.87500; // decimal
real e = 11.37500; // decimal
integer y = 7 ; // counter
reg [7:0] b = 0 ; // binary
// actions 
initial begin : main
    $display ( "Guia_0202 " );
    $display ( "a = %f" , a );
    while ( a > 0 && y >= 0 )
    begin
        if ( a*2 >= 1 )
            begin
            b[y] = 1;
            a = a*2.0 - 1.0;
            end
        else
            begin
            b[y] = 0;
            a = a*2.0;
            end // end if
        $display ( "b = 0.%8b", b );
        y=y-1;
        end 
        
        y=7;
        b=0;
        $display ( "x = %f" , x );
        while ( x > 0 && y >= 0 )
        begin
            if ( x*2 >= 1 )
                begin
                b[y] = 1;
                x = x*2.0 - 1.0;
                end
            else
                begin
                b[y] = 0;
                x = x*2.0;
                end // end if
        $display ( "b = 0.%8b", b );
        y=y-1;
        end 

        y=7;
        b=0;
        $display ( "c = %f" , c );
        while ( c > 0 && y >= 0 )
        begin
            if ( c*2 >= 1 )
                begin
                b[y] = 1;
                c = c*2.0 - 1.0;
                end
            else
                begin
                b[y] = 0;
                c = c*2.0;
                end // end if
        $display ( "b = 0.%8b", b );
        y=y-1;
        end 

        y=7;
        b=0;
        $display ( "d = %f" , d );
    while ( d > 0 && y >= 0 )
    begin
        if ( d*2 >= 1 )
            begin
            b[y] = 1;
            d = d*2.0 - 1.0;
            end
        else
            begin
            b[y] = 0;
            d = d*2.0;
            end // end if
        $display ( "b = 0.%8b", b );
        y=y-1;
        end 

        y=7;
        b=0;
        $display ( "e = %f" , e );
    while ( e > 0 && y >= 0 )
    begin
        if ( e*2 >= 1 )
            begin
            b[y] = 1;
            e = e*2.0 - 1.0;
            end
        else
            begin
            b[y] = 0;
            e = e*2.0;
            end // end if
        $display ( "b = 0.%8b", b );
        y=y-1;
        end 
    end //main 
endmodule //0202


/*
Guia_0203
*/
module Guia_0203;
// define data
// real x = 0.625;
reg [7:0] a = 8'b01110100 ; // binary
reg [7:0] b = 8'b10010100 ; // binary
reg [7:0] c = 8'b10011000 ; // binary
reg [7:0] d = 8'b11001100 ; // binary
reg [3:0] d2 = 4'b0001 ; // binary
reg [7:0] e = 8'b11010000 ; // binary
reg [3:0] e2 = 4'b1101 ; // binary

// actions
initial
begin : main
$display ( "Guia_0203 - Tests" );
$display("a 0.%8b = 0.%d%d%d%d", a, a[7:6], a[5:4], a[3:2], a[1:0]);
$display("b 0.%8b = 0.%o%o", b, b[7:5], b[4:2]);
$display("c 0.%8b = 0.%o%o", c, c[7:5], c[4:2]);
$display("d %4b.%8b = %o.%o%o", d2, d, d2, d[7:5], d[4:2]);

end // main
endmodule // Guia_0203


