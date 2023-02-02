module ring_count_test;
    reg clk,clr;
    wire [3:0]q;
    ring_count dut1(q,clk,clr);
  initial 
    begin
      $display(“time,\t clk,\t clr,\t q”);
      $monitor(“%g,\t %b,\t %b,\t %b”,$time,clk,clr,q);
      clr=1′b0;
      #50 clr=1′b1;
      #100 clr=1′b0;
    end
  always 
    begin
      #50 clk=1′b1;
      #50 clk=1′b0;
    end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule
