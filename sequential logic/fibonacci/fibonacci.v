module fibonacci (input clk, rst,output [3:0] out);
  reg [3:0] RegA, RegB, RegC; 
  always @ (posedge clk) begin
    if (rst) begin
      RegA <= 4'h1;	
      RegB <= 4'h0;
      RegC <= 4'h0; 
    end
    else begin
      RegA <= RegB[3] ? 4'h1 : RegA + RegB; 
      RegB <= RegB[3] ? 4'h0 : RegA;	
      RegC <= RegB;	
    end
  end  
  assign out = RegB;  
endmodule
