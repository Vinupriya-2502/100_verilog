// Code your testbench here
// or browse Examples
module testoddpc;
  reg a,b,c,P;
  wire PEC;
  odd_parchecker uut(a,b,c,P,out);
  initial begin
  
    $monitor($time,"value of a=%b,b=%b,c=%b,P=%b,PEC=%b",a,b,c,P,PEC);
    $dumpfile("testoddpc.vcd");
    $dumpvars(1);
    a=0;b=0;c=0;P=0;
  end
  always #80 a=~a;
  always #40 b=~b;
  always #20 c=~c;
  always #10 P=~P;
  always@(a,b,c,P)
    begin
      #200 $finish;
    end
endmodule
