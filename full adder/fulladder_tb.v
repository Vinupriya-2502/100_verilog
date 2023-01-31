module fulladder_tb;
  reg A, B, Cin;
  wire S, Cout;
  integer i;
  fulladder_ FA (.A(A),.B(B) ,.Cin(Cin), .S(S), .Cout(Cout));
  initial
    begin
      {A,B,Cin} <= 3'b000;
      for(i=1;i<20; i=i+1)
        begin
          $monitor($time, "\tA=%b\t    B=%b\t   Cin=%b\t   S=%b\t    Cout=%b", A, B,Cin, S,Cout);
          #5{A,B,Cin} <= $random%8;
        end
      //always#5 {A,B,Cin}<=$random%8;
        #45 $finish;
    end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule
