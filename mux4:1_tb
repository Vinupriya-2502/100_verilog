module mux4_1_tb;
  reg [1:0] s;
  reg i0,i1,i2,i3;
  wire y;
  
  mux4_1 mux(s, i0, i1, i2, i3, y);
  
  initial begin
    $monitor("s = %b -> i3 = %0b, i2 = %0b ,i1 = %0b, i0 = %0b -> y = %0b", s,i3,i2,i1,i0, y);
    {i3,i2,i1,i0} = 4'h5;
    repeat(6) begin
      sel = $random;
      #5;
    end
  end
endmodule
