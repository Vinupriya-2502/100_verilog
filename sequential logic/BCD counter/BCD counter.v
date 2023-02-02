// Code your design here
module counter10    (out     , enable  ,  clk     ,  reset);
  output [3:0] out;
  input enable, clk, reset;
  reg [3:0] out;
  always @(posedge clk)
    if (reset) 
      begin
        out <= 4'b0 ;
      end 
  else if (enable)
    begin
      out <= (out + 1)%10;
      end
endmodule
