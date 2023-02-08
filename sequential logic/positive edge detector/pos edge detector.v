module edge_detector(
    input  data,  input clk,
    output edge_detect  
    );
	    reg data_d;   
	always @ (posedge clock) begin
		data_d <= data;
	end
	assign edge_detect = data & ~data_d;            
endmodule 
