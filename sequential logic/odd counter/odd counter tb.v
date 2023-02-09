// Code your testbench here
// or browse Examples
module odd_counter_tb;
reg clk;
wire [7:0] count;
odd_counter cntr(
    .clk(clk),
    .count(count)
  );
  
  initial begin
    clk = 0;
    #5
    clk = 1;
    #5
    clk = 0;
    #5
    clk = 1;
    #5
    $finish;
  end
  
  initial begin
    #10
    if (count != 8'b00000011) begin
      $display("Error: expected count to be 8'b00000011 but got %b", count);
    end else begin
      $display("Test passed: count = %b", count);
    end
  end
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
