// Code your testbench here
// or browse Examples
module testepc;
  reg a,b,c,P;
  wire out;
  Evenpchecker E1(a,b,c,P,out);
  initial begin
   
    $monitor($time,"value of a=%b,b=%b,c=%b,P=%b,PEC=%b",a,b,c,P,out);
    $dumpfile("tetstepc.vcd");
    $dumpvars(1,E1);
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
        
