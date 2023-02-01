module dff_sync_reset_tb;
  reg data, clk, reset ; 
  wire q;
  dff_sync_reset dff (.data(data), .clk(clk), .reset(reset)  ,.q(q));
  initial
    begin
      clk=0;
      data = 0;
      reset = 1;
      #5 reset = 0;
      #80 reset = 1;
      $monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t,  q=%b",clk,reset,data,q);
      #100 $finish;
      end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
  always 
    #5  clk = ~clk;
  always
    #30 data = ~data;
endmodule
