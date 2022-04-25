module mem_ram_sync(
    input clk,
    input rst,
    input read_rq,
    input write_rq,
    input[5:0] rw_address,
    input[5:0] write_data,
    output[15:0] read_data
);


reg[15:0]     read_data;

integer out, i;

// Declare memory 8x16 bits = 128 bits or 32 bytes
reg [15:0] memory_ram_d [7:0];
reg [15:0] memory_ram_q [7:0];

// Use positive edge of clock to read the memory
// Implement cyclic shift right
always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        for (i=0;i<8; i=i+1)
            memory_ram_q[i] <= 0;
    end
    else
    begin
        for (i=0;i<8; i=i+1)
             memory_ram_q[i] <= memory_ram_d[i];
    end
end


always @(*)
begin
    for (i=0;i<8; i=i+1)
        memory_ram_d[i] = memory_ram_q[i];
    if (write_rq && !read_rq)
        memory_ram_d[rw_address] = write_data;
    if (!write_rq && read_rq)
        read_data = memory_ram_q[rw_address];
end
endmodule
