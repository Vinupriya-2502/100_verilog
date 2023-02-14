module fact(out,in);
  output reg  [31:0]out;
  input [3:0]in;
  always@(in)
    begin
      fact(out,in);
    end
  task fact;
    output [31:0]y;
    input [3:0]x;
    begin
      reg [31:0]temp;
      integer i;
      temp=1;
      
      for (i=1;i<=x;i=i+1)
        begin
          temp=temp*i;
        end
      y=temp;
    end
  endtask
endmodule

    
      
