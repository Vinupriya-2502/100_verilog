// Code your testbench here
// or browse Examples
module updowncounter_testbench();
reg clk, reset,up_down;
wire [3:0] counter;

up_down_counter dut(clk, reset,up_down, counter);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
up_down=0;
#20;
reset=0;
#200;
up_down=1;
end
initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule 
