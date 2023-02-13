module edge_detector (clk,
                      rst,
                      din,
                      rising_edge
                     );
  
  input clk, rst, din;
  output rising_edge;
  reg dout;
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        begin
          dout <= 'h0;
        end
      else
        begin
          dout <= din;
        end
    end
  
  assign rising_edge  = ( din & (!(dout)) );
 
endmodule
