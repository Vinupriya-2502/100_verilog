module bufftb;
	reg a;
	wire y;
	buf buf(a,y);
	initial
	begin
		$display ("RESULT\ta\ty");
    a = 0; # 100; 
		if ( y == 0 )
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);
    a = 1; # 100; 
		if ( y == 1 ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);
	end
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
