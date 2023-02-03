// Code your design here
module mux2_1(
  input s,
  input i0, i1,
  output y);
  
  assign y = s ? i1 : i0;
endmodule

module mux4_1(
  input s0, s1,
  input  i0,i1,i2,i3,
  output reg y);
  
  wire y0, y1;
  
  mux2_1 m1(s1, i2, i3, y1);
  mux2_1 m2(s1, i0, i1, y0);
  mux2_1 m3(s0, y0, y1, y);
endmodule
