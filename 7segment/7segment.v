module BCD_to_7Segment (input A,B,C,D, output a,b,c,d,e,f,g);
  wire T0, T1, T2, T3, T4, T5, T6, T7, T8, T9;
  assign T0=~A&C;   assign T1=~A&B;    assign T2=~B&~C;
  assign T3=~A&D;   assign T4=T2&A;    assign T5=T2&~D;
  assign T6=T0&~B;  assign T7=T0&~D;   assign T8=T1&~C;
  assign T9=T1&~D;
  assign a = T0 | T1&D | T4 | T5;
  assign b = ~A&~B | T2 | ~A&~C&~D | T3&C;
  assign c = T1 | T2 | T3;
  assign d = T4 | T5 | T6 | T7 | T8&D;
  assign e = T5 | T7;
  assign f = T4 | T5 | T8 | T9;
  assign g = T4 | T6 | T8 | T9;
endmodule
