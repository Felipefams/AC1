module mem_ram_sync(
    input clk,
    input rst,
    input read_rq,
    input write_rq,
    input[5:0] rw_address,
    input[5:0] write_data,
    output[1:0] read_data
);


reg[1:0]     read_data;

integer out, i;

// Declare memory 64x8 bits = 512 bits or 64 bytes
reg [1:0] memory_ram_d1 [2:0];
reg [1:0] memory_ram_d2 [2:0];
reg [1:0] memory_ram_q1 [2:0];
reg [1:0] memory_ram_q2 [2:0];

// Use positive edge of clock to read the memory
// Implement cyclic shift right
always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        for (i=0;i<1; i=i+1)
            memory_ram_q1[i] <= 0;
            memory_ram_q2[i] <= 0;
    end
    else
    begin
        for (i=0;i<1; i=i+1)
             memory_ram_q1[i] <= memory_ram_d1[i];
             memory_ram_q2[i] <= memory_ram_d2[i];
    end
end


always @(*)
begin
    for (i=0;i<1; i=i+1)
        memory_ram_d1[i] = memory_ram_q1[i];
        memory_ram_d2[i] = memory_ram_q2[i];
    if (write_rq && !read_rq)
        memory_ram_d[rw_address] = write_data;
    if (!write_rq && read_rq)
        read_data = memory_ram_q1[rw_address];//o problema e que tem que fazer pras duas...
        read_data = memory_ram_q2[rw_address];
end
endmodule

