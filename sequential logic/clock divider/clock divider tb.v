
module clockdivider_tb;
	reg clk;
	reg rst;
	wire divideby2;
	wire divideby4;
	wire divideby8;

	clockdivider uut (
		.clk(clk), 
		.divideby2(divideby2), 
		.divideby4(divideby4), 
		.divideby8(divideby8), 
		.rst(rst)
	);

	initial begin
		clk = 0;
		rst = 0;
		#50 rst=1;
        

	end
	always
	#10 clk=~clk;
	
	initial 
	#100 $finish;
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
      
endmodule
