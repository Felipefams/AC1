module mem_ram_sync(
    input clk,
    input rst,
    input read_rq,
    input write_rq,
    input[5:0] rw_address,
    input[5:0] write_data,
    output[7:0] read_data
);


reg[7:0]     read_data;

integer out, i;

reg [7:0] memory_ram_d [3:0];
reg [7:0] memory_ram_q [3:0];

// Use positive edge of clock to read the memory
always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        for (i=0;i<4; i=i+1)
            memory_ram_q[i] <= 0;
    end
    else
    begin
        for (i=0;i<4; i=i+1)
             memory_ram_q[i] <= memory_ram_d[i];
    end
end


always @(*)
begin
    for (i=0;i<4; i=i+1)
        memory_ram_d[i] = memory_ram_q[i];
    if (write_rq && !read_rq)
        memory_ram_d[rw_address] = write_data;
    if (!write_rq && read_rq)
        read_data = memory_ram_q[rw_address];
end
endmodule

/*
module Exemplo1101;
reg clk, reset, x;
wire m1, m2;
initial
begin
$display ( "Time    X  Mealy Moore" );
// initial values
clk = 1; reset = 0; x= 0;

// input signal changing
#5 reset = 1;
#10 x = 1;
#10 x = 0;
#10 x = 1;
#20 x = 0;
#10 x = 1;
#10 x = 1;
#10 x = 0;
#10 x = 1;
#30 $finish;
end // initial
always
#5 clk = ~clk;
always @( posedge clk )
begin
$display ( "%4d %4b %4b %5b", $time, x, m1, m2 );
end // always at positive edge clocking changing
endmodule // Exemplo_1101 */