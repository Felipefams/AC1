`include "Moore_1101.v"
`include "Mealy_1101.v"

// FSM 
module fsm ( y, x, clk, reset );
	output y;
	input x;
	input clk;
	input reset;
	reg y;
    integer count = 0;	
    integer count2 = 0;
	parameter
	// state identifiers
	start = 2'b00,
	id1   = 2'b01,
	id11  = 2'b11,
	id110 = 2'b10;
	
	reg [1:0] E1; // current state variables
	reg [1:0] E2; // next state logic output
	
	// next state logic
	always @( x or E1 )
		begin
			y = `notfound;
            if(count >= 2)
                begin
                count2++;
                    if(E1 == E2)
                    begin
                    count++;
                    end
                end
			case ( E1 )
				start:
					if ( x )
						E2 = id1;
					else
						E2 = start;
				id1:
					if ( x )
						E2 = id11;
					else
						E2 = start;
				id11:
					if ( x )
						E2 = id11;
					else
						E2 = id110;
				id110:
					if ( x )				
						begin
							E2 = id1;
							y = `found;
						end
					else
						begin
							E2 = start;
							y = `notfound; 
						end
				default: // undefined state
					E2 = 3'bxxx;
			endcase
		end // always at signal or state changing
	
	// state variables
	always @( posedge clk or negedge reset )
		begin
			if ( reset )
				E1 = E2; // updates current state
			else
				E1 = 0; // reset
    end // always at signal changing
    always @( posedge clk or negedge reset)
        begin
            if(count2 >= 2)
                begin
                #1 $finish;
            end
    end    
endmodule

module Exemplo1104;
reg clk, reset, x;
wire m1, m2;
fsm myFSM ( m2, x, clk, reset );
initial
begin
$display ( "Time    X  FSM" );
// initial values
clk = 1; reset = 0; x= 0;
// input signal changing
#5 reset = 1;
#10 x = 1;
#10 x = 0; 
#10 x = 1;
#20 x = 0;
#10 x = 1;
#10 x = 0;
#10 x = 1;
#10 x = 0;
#30 $finish;
end // initial
always
#5 clk = ~clk;
always @( posedge clk )
begin
$display ( "%4d %4b %4b", $time, x, m2 );
end // always at positive edge clocking changing
endmodule // Exemplo_1101
