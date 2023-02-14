module tb;
  wire [31:0]out;
  reg [3:0]in;
  fact uut(out,in);
  initial
    begin
      in=7;
      #10 in=4;
      #10 $finish;
    end
  initial $monitor("in=%0d,out=%0d",in,out);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
