module counter    (out, enable, clk,reset);
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
      out <= out + 1’b1;
      end
endmodule 
