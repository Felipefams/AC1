//pulse module, instead of using it inside the file.
module pulse ( signal, clock );
input clock;
output signal;
reg
 signal;
always @ ( clock )
begin
signal = 1'b1;
#3 signal = 1'b0;
#3 signal = 1'b1;
#3 signal = 1'b0;
end
endmodule // pulse
