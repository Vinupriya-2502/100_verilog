module srlatch(s,r,q,q_bar);
input s,r;
output q,q_bar;
  assign q=~(r|q_bar);
  assign q_bar=~(s|q);
endmodule
