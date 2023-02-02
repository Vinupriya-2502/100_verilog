module synchronouscountertb;
	reg clk, reset;
	wire [3:0] count;
	synchronouscounter synccntr(clk,reset,count);

	initial
	begin
		clk = 0;
		reset = 1;
		#125;
		reset = 0;
		#4500;
		$finish;
	end

	always #50 clk=~clk;

	always@(posedge clk)
	begin
		$display ("value is %d", count);
	end
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end

endmodule
