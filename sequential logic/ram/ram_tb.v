module ram_tb;
reg[9:0]address;
wire[31:0]data_out;
reg[31:0]data_in;
reg[31:0] data;
reg write,select,read;
integer k,myseed;
ram ra(data_out,data_in,address,write,select);
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
end
 initial
    begin
      for(k=0;k<32;k=k+1)
        begin
           data=(k+k)%256;read=0;write=1;
              select=1;
              #2 write=0;select=0;
        end
        repeat(20)
        begin
          #2 address=$random(myseed)%1024;
          write=0; select=1;
          $display("address:%5d,data:%4d",address,data);
        end
     end
  initial myseed=35;
endmodule
