module halfadder_tb;
reg a;
reg b;
wire sum;
wire carry;
ha test (
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);
initial begin
a = 0;
b = 1;
#1000
a = 1;
b = 1;
end
initial
  begin
    $monitor($time, "\ta=%b\t    b=%b\t   sum=%b\t   carry=%b\t  ", a,b,sum,carry);
  end
 initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule
