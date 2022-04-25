//template de testbench
//output em arquivo
//o testebench eh pra 8x64, se quiser testar com outras, tem que mudar.
module mem_ram_sync(
    input clk,
    input rst,
    input read_rq,
    input write_rq,
    input[5:0] rw_address,
    input[7:0] write_data,
    output[7:0] read_data
);

reg[7:0]     read_data;

integer out, i;

// Declare memory 64x8 bits = 512 bits or 64 bytes
reg [7:0] memory_ram_d [63:0];
reg [7:0] memory_ram_q [63:0];

// Use positive edge of clock to read the memory
// Implement cyclic shift right
always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        for (i=0;i<64; i=i+1)
            memory_ram_q[i] <= 0;
    end
    else
    begin
        for (i=0;i<64; i=i+1)
             memory_ram_q[i] <= memory_ram_d[i];
    end
end

always @(*)
begin
    for (i=0;i<64; i=i+1)
        memory_ram_d[i] = memory_ram_q[i];
    if (write_rq && !read_rq)
        memory_ram_d[rw_address] = write_data;
    if (!write_rq && read_rq)
        read_data = memory_ram_q[rw_address];
end
endmodule

// Test Bench for memory modeling
module memory_tb ();
reg clk, rst;
reg      read_rq;
reg      write_rq;
reg[5:0] rw_address;
reg[7:0] write_data;
wire[7:0] read_data;
reg [5:0] q_cnt;
integer seed;
integer out, rout;

// mem_ram_sync mram(clk, rst, read_rq, write_rq, rw_adress[5:0], write_data[5:0], read_data[5:0]);

initial
begin
    clk = 0;
   forever #10 clk = ~clk;
end

initial begin
    rst = 0;
    # 50 rst = 1;
end

always @(posedge clk or
    negedge rst)
begin
    if (!rst)
    begin
     q_cnt <= 0;
     write_data <= 'b0;
     out = $fopen("mem_ram.vec","w");
     rout = $fopen("mem_ram_read.vec","w");
    end
    else
    begin
        if (q_cnt < 63)
        begin
            q_cnt <= q_cnt+1;
            write_data <= $random(seed) & 'hFF;
            read_rq <= 0;
            write_rq <= 1;
            rw_address <= q_cnt;
            $fdisplay(out, "Address::%d:: %b :: -- contents in hex %h", rw_address, write_data, write_data);
        end
        else
        begin
            q_cnt <= q_cnt;
            write_data <= write_data;
            rw_address <= $random(seed) & 'h3F;
            read_rq <= 1;
            write_rq <= 0;
            $fdisplay(rout,"Address::%d:: %b :: -- read contents in hex %h", rw_address, read_data, read_data);
        end
    end
end
mem_ram_sync u_dut_ram (
    .clk(clk),
    .rst(rst),
    .read_rq(read_rq),
    .write_rq(write_rq),
    .rw_address(rw_address),
    .write_data(write_data),
    .read_data(read_data)
);
endmodule
