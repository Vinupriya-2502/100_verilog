module sp_ram(data_in, ram_addr,write_en,clk,data_out);
input [7:0]data_in;
input [5:0] ram_addr;
input write_en;
input clk;
output [7:0]data_out;
reg [7:0] ram_mem[31:0]; 
  reg [5:0] addr_register;
always @(posedge clk)
begin
if (write_en)  
  ram_mem[ram_addr] <= data_in;
else 
  addr_register <= ram_addr;
end
assign data_out = ram_mem[addr_register];
endmodule
