module Test_BCD_to_7Segment;	

  reg  A, B, C, D;	        
  wire a, b, c, d, e, f, g;	

  BCD_to_7Segment BCD_7 (A, B, C, D, a, b, c, d, e, f, g);

  initial begin	
    $dumpfile("dump.vcd");
    $dumpvars(1);
    A=0; B=0; C=0; D=0;	
    #200 $finish;	    
  end	                

  always #10 D=~D;	
  always #20 C=~C;	
  always #40 B=~B;	
  always #80 A=~A;	

endmodule
