module TestModule;
reg a;
reg b;

wire y1;
wire y2;
wire y3;
wire y4;
wire y5;
wire y6;
wire y7;
LogicGates uut (
.a(a),
.b(b),
.y1(y1),
.y2(y2),
.y3(y3),
.y4(y4),
.y5(y5),
.y6(y6),
.y7(y7)
);

initial begin

a = 0;
b = 0;

#20

a = 1;
b = 0;
  
end
  
 initial begin	
    $dumpfile("dump.vcd");
    $dumpvars(1);
    end
endmodule
