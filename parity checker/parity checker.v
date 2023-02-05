module parity(input reset, input clk, input data, output par);
  reg state;
  always @(posedge clk)
  begin
    if (reset) state<=1'b1;
    else state<=state^data;
  end
endmodule;
