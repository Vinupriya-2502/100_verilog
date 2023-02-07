module sp_ram_tb;
reg [7:0]data_in;
reg [5:0] ram_addr;
reg write_en;
reg clk;
wire [7:0]data_out;
sp_ram  ram(data_in , ram_addr,write_en,clk,data_out);
initial begin 
clk =1'b1;
forever #10 clk=~clk;
end
initial
begin
write_en =1'b1;
#20;
ram_addr=5'd0;
data_in = 8'h10;
#20;
ram_addr=5'd2;
data_in = 8'h11;
#20;
ram_addr=5'd7;
data_in = 8'h20;
#20;
write_en = 1'b0;
ram_addr=5'd0;
#20;
ram_addr=5'd2;
#20;
ram_addr=5'd7;
#20;
$finish;
end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule
