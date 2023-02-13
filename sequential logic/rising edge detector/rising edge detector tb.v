// Code your testbench here
// or browse Examples

module edge_detector_tb;
  
  reg clk, rst, din;
  wire rising_edge;
  
  edge_detector ED (clk,
                      rst,
                      din,
                      rising_edge
                     );
  
  initial
    begin
      clk = 0;
      forever
        #20 clk = !clk;
    end
  
  task RST;
    //begin
      rst = 1'b1;
      din = 'h0;
    $display ("\n\nSKL\n\n");
      #60;
      rst = 1'b0;
    //end
  endtask
  
  task DIN (input i);
    begin
      //@(negedge clk);
      din = i;
    end
  endtask
  
  initial
    begin
      RST;
      #10;
      DIN(1);
      #3;
      DIN(0);
      #15;
      DIN(1);
      #3;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #30;
      DIN(1);
      #55;
      DIN(0);
      #5;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #9;
      DIN(0);
      
    end
  
  
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
  
  initial
    #2800 $finish;
  
endmodule 
