// Code your design here
module arbiter(clk, rst, req_0, req_1, gnt_0, gnt_1);
  input clk;
  input rst;
  input req_0;
  input req_1;
  output gnt_0;
  output gnt_1;
  
  reg gnt_0, gnt_1;
  
  always @ (posedge clk) begin
  
    if (rst) begin
      gnt_0 <= 0;
      gnt_1 <= 1;
    end else if (req_0) begin
      gnt_0 <= 1;
      gnt_1 <= 0;
    end else if (req_1) begin
      gnt_0 <= 0;
      gnt_1 <= 1;
      end else begin
       gnt_0 <= 0;
       gnt_1 <= 1;
    end 
  end

endmodule

  
