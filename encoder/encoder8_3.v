module encoder8_3(input [7:0] I,output reg [2:0] Y );
  or(Y[2],I[4],I[5],I[6],I[7]);
  or(Y[1],I[2],I[3],I[6],I[7]);
  or(Y[0],I[1],I[3],I[5],I[7]);
endmodule
