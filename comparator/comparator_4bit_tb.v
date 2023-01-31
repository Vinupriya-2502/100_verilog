module comparator_4bit_tb;
  reg [3:0] A, B;
  wire AeqB, AgtB, AltB;
  comparator_4bit comp(A, B, AeqB, AgtB, AltB);
  always 
    #5 B=$random%16;
  always 
    #5 A=$random%16;
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
  initial
    begin
      $monitor($time,  "\tA=%b\t ,  B=%b\t,  AeqB=%b\t,  AgtB=%b\t,  AltB=%b\t", A,B, AeqB, AgtB, AltB);A=4'b0000;B=4'b0000;#80 $finish;
      end
endmodule
