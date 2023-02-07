module onehot_tb;
  wire [7:0]out;
  reg enable,clk,reset;
  onehot uut(.enable(enable),.clk(clk),.reset(reset),.out(out));
  always#5 clk=~clk;
  initial begin
    clk=0;
    enable=0;
    reset=0;
    $dumpfile("dump.vcd");
    $dumpvars;
    #2 enable=1;
  #4 reset=1;
  end
  
  initial#10 $monitor($time,"clk=%d \t out=%d",clk,out);
  initial#20 $finish;
endmodule
