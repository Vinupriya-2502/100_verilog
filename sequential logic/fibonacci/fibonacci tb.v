module tb ();
  
  reg clk, en, rst;
  wire [3:0] out;
  
  fibonacci uut (clk, rst, out);
  
  always #1 clk = ~clk;
  
  initial begin
    $monitor ("En = %b, Out = %d", en, out);
    clk = 0; rst = 1; en = 0;
    
    #2 rst = 0; en = 0;
    
    #2 en = 1;
    
    #30 en = 0;
    
    #2 en = 1;
    
    #40 $stop;
    
  end
  
  initial begin
  $dumpfile("dump.vcd");
    $dumpvars(0);
end
  
endmodule
