module srLatch_tb();
 reg s, r;  
wire q, q_bar; 
  srlatch uut(s, r, q, q_bar);
initial begin
  $dumpfile("dump.vcd");
   $dumpvars;
    s=0; r=0; #50;
    s=0; r=1; #50
    s=1; r=0; #50
    s=1; r=1; #50
  $monitor("s=%b, r=%b ==> q=%b, q_bar=%b # invalid state, so discount error",
              s, r, q, q_bar);
end
endmodule
