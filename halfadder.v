// Code your testbench here
// or browse Examples
module halfadder_tb;

reg a;

reg b;

wire sum;

wire carry;

ha uut ( .a(a),.b(b),.sum(sum), .carry(carry));

initial begin

#10 a=1’b0;b=1’b0; 
  
#10 a=1’b0;b=1’b1;                        

#10 a=1’b1;b=1’b0;                       

#10 a=1’b1;b=1’b1;   
  
#10$stop;
end 
initial
   begin
     $dumpfile("dump.vcd"); 
     $dumpvars(1);
     #10000$finish;
   end
