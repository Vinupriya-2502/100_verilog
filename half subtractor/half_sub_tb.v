module halfsub_tb;
reg a;
reg b;
wire diff;
wire borrow;
hs tesths (
.a(a),
.b(b),
  .diff(diff),
  .borrow(borrow)
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
    $monitor($time, "\ta=%b\t    b=%b\t   diff=%b\t   borrow=%b\t  ", a,b,diff,borrow);
  end
 initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end
endmodule
