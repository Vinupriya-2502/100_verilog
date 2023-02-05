module partb;

reg clk,ip,rst;
int mask,word;
wire parout;

  parity dut(rst,clk,inp,par);

initial
  begin          
  $dumpfile("dump.vcd");
  $dumpvars(0, dut);
  clk=1'b0;rst=1'b1;inp=1'b0;
#5
  rst=0;
#5
    word=8'h84;   // word to send via serail
    for (mask=128;mask!=0;mask=mask/2) begin
      inp=(word & mask)?1'b1:1'b0;  // get current pit
#2  ;   // wait for clock
    end
  rst=1'b1;
#5 $finish;
  end
always #1 clk=~clk;  // generate clock
endmodule;
