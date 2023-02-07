// Code your design here
module seq_detector(
input x,clk,reset,
output reg z
);

parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3 ;
reg [2:0] PS,NS ;

always @(posedge clk or posedge reset)
    begin
        if(reset)
            PS <= S0;   
        else    
            PS <= NS ; 
    end
always @(PS, x)
begin          
case(PS)
            S0 : begin
                        NS = x ? S1 : S0 ;
                        $display(PS);
                    end
            S1 : begin 
                        NS = x ? S2 : S1 ;
                        $display(PS);
                    end
            S2 : begin 
                        NS = x ? S3 : S2 ;
                        $display(PS);
                    end 
            S3 : begin 
                        NS = x ? S3 : S0 ;
                        $display(PS);
                    end
           
            default: NS = S0; 
        endcase
    end
always @(PS)
begin
  case(PS)
    S3: z = 1;
    default: z = 0;
  endcase 
end 
endmodule
