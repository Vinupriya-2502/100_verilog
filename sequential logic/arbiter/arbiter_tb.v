
module arb_tb();
  
  reg clk, rst, req_0, req_1;
  wire gnt_0, gnt_1;
  
  arbiter arb(
    .clk(clk),
    .rst(rst),
    .req_0(req_0),
    .req_1(req_1),
    .gnt_0(gnt_0),
    .gnt_1(gnt_1)
  );
  
  initial begin
    $monitor ("req0=%b,req1=%b,gnt0=%b,gnt1=%b", req_0,req_1,gnt_0,gnt_1);
    clk = 0;
    rst = 0;
    req_0 = 0;
    req_1 = 0;
    
    #1 rst = 1;
    #4 rst = 0;
    #4 req_0 = 1;
    #4 req_1 = 0;
    #4 req_0 = 0;
    #4 req_1 = 1;
    #4 req_0 = 1;
    #4 req_1 = 1;
    #4 req_0 = 0;
    #4 req_1 = 0;    
    #4 req_0 = 1;
    #4 req_1 = 0;
    $finish;
  end
  
  always begin
     #1 clk = ~clk;
  end
  initial 
    begin
      $dumfile("dump.vcd");
      $dumpvars;
    end
endmodule
