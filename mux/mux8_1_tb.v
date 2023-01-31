module mux8_1_tb;
  reg   D0,D1,D2,D3,D4,D5,D6,D7;
  reg  [2:0] Sel;
  wire  Y;
  mux8_1 mux(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7), .Sel(Sel),.Y(Y));
  initial 
    begin
      {D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;
      #10  Sel= 000;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8; 
      #10 Sel= 001;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
      #10 Sel= 010;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
      #10 Sel= 011;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
      #10 Sel= 100;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8; 
      #10 Sel= 101;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8; 
      #10 Sel= 110;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
      #10 Sel= 111;{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
      #10$stop;
      end
  always @(Y)
    $display("time =%0t \tINPUT VALUES: \t D0 D1 D2 D3D4 D5 D6 D7=%b%b%b%b%b%b%b%b \t S = %b  \t output value Y  = %b ",$time,D0,D1,D2,D3,D4,D5,D6,D7,S, Y);
endmodule
