module encoder8_3_tb;
  reg [7:0] I;
  wire  [2:0] Y;
  encoder8_3 encoder(.I(I),.Y(Y));
  initial
    begin
      I= 8'b00000001;
      #10 I=8'b00000010;
      #10 I=8'b00000100;
      #10 I=8'b00001000;
      #10 I=8'b00010000;
      #10 I=8'b00100000;
      #10 I=8'b01000000;
      #10 I=8'b10000000;
      #10$stop;
      end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
  always @(Y)
    $display("time =%0t \tINPUT VALUES: \t I=%b  \t output value Y  = %b ",$time,I, Y);
endmodule
