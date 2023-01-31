module decoder2_4_tb;
  reg EN, A0, A1;
  wire  D0, D1, D2, D3;
  decoder2_4 decoder(.EN(EN), .A0(A0), .A1(A1), .D0(D0), .D1(D1), .D2(D2), .D3(D3));
  initial
    begin
      EN=1'b0; A1 =1'bX ; A0 =1'bX;
      #10 EN=1'b1; A1 =1'b0 ; A0 =1'b0;
      #10 EN=1'b1; A1 =1'b0 ; A0 =1'b1;
      #10 EN=1'b1; A1 =1'b1 ; A0 =1'b0;
      #10 EN=1'b1; A1 =1'b1 ; A0 =1'b1;
      #10$stop;
      end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
  always @(D0, D1, D2, D3)
    $display( "time =%0t \tINPUT VALUES: \t EN=%b \tA1 =%b \t A0=%b \t output value D3 D2 D1 D0  = %b%b%b%b",$time,EN,A1, A0, D3,D2, D1, D0);
endmodule
