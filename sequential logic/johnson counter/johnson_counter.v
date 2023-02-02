// Code your design here
module johnson(rst, clk, q);
input rst, clk;
  output[7:0] q;
  reg [7:0] q;
  always @(negedge rst or posedge clk)
    if(!rst)
q <= 0;
else
  q <= {{q[6:0]},{~q[7]}};
endmodule
