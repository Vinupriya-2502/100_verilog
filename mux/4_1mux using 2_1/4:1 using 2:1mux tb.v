module tb;
  reg s0, s1;
  reg i0,i1,i2,i3;
  wire y;
  
  mux4_1 mux(s0, s1, i0, i1, i2, i3, y);
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
  
  initial begin
    $monitor("s0=%b, s1=%b -> i3 = %0b, i2 = %0b ,i1 = %0b, i0 = %0b -> y = %0b", s0,s1,i3,i2,i1,i0, y);
    {i3,i2,i1,i0} = 4'h5;

    repeat(6) begin
      {s0, s1} = $random;
      #5;
    end
  end
endmodule
