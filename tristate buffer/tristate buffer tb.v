module jtristatebuffertb;
  reg  a,c;
  wire y;
  
  tristate_buffer jbuf(a,c,y);
  initial begin
		$display ("RESULT\ta\ty");

		a = 0; c = 0; # 100; 
		if ( y === 1'bz ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

		a = 0; c = 1; # 100; 
		if ( y === 0 ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

		a = 1; c = 0; # 100; 
		if ( y === 1'bz ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

		a = 1; c = 1; # 100; 
		if ( y === 1 ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

	end
  
  initial begin
    //dump waveform
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
