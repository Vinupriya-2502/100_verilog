// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
module adder4bit_tb;
reg [3:0] a;
reg [3:0] b;

wire [3:0] s;
wire cout;

adder4_bit testadd(.sum(s),.cout(cout),.a(a),.b(b));
initial 
begin
a=4'b0000;
b=4'b0001;

#30 
a=4'b0001;
b=4'b0001;

#30
a=4'b0010;
b=4'b0001;

#30;
a=4'b0100;
b=4'b0101;
#30;
a=4'b1100;
b=4'b1101;
#30;
end

initial
  begin
    $dumpfile("dump.vcd"); 
    $dumpvars(1);
    #10000$finish;
  end

endmodule

