// -------------------------
// Questao_01 - Guia_13 
// Nome: Marcus Prado Silva
// Matricula: 753117
// -------------------------

`include "clock_gen.v"
`include "jkff.v"



module questao01;

    // ------------------------- definir dados

    reg x;
    reg clear;
    wire clk_resp;
    wire a1,b1,c1,a2,b2,c2;
    wire ignore1,ignore2,ignore3,ignore4,ignore5,ignore6,ignore7,ignore8,ignore9,ignore10;
    
    clock_gen clk(clk_resp);
    jkff flipflop01( ignore1,a1,x,x,a2,clear );
    jkff flipflop02( ignore3,a2,x,x,b1,clear );
    jkff flipflop03( ignore5,b1,x,x,b2,clear );
    jkff flipflop04( ignore7,b2,x,x,c1,clear );
    jkff flipflop05( ignore9,c1,x,x,c2,clear );
    jkff flipflop06( ignore9,c2,x,x,clk,clear );   


    // ------------------------- parte principal

    initial
    begin : main
        $dumpfile ( "questao01.vcd" );
        $dumpvars;
        #2000 $finish;
    end
endmodule // questao01

