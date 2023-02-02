// Code your testbench here
// or browse Examples
module counter10_tb; 
  reg clk, reset, enable; 
  wire [3:0] out; 
  counter10 U0 (.clk(clk), .reset  (reset), .enable (enable),  .out  (out) );  
  initial 
    begin
      clk = 0; reset = 1; enable = 0;
      #5 enable = 1;
      #5 reset = 0;
      #1000 $finish;
    end
  always   
    #5 clk = !clk;
  initial 
    begin
      $display("\t\ttime,\tclk,\treset,\tenable,\tout");
      $monitor("%d,\t%b,\t%b,\t%b,\t%d",$time, clk,reset,enable,out);
    end 
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule
