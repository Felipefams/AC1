//trigger module
module trigger ( signal, on, clock );
input on, clock;
output signal;
reg
 signal;
always @ ( posedge clock & on )
begin
#60 signal = 1'b1;
#60 signal = 1'b0;
end
endmodule // trigger