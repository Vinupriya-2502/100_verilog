module block_test;
reg din;
reg clk;
wire a;
wire b;
wire c;
block_ uut(.din(din),
        .clk(clk),
        .a(a),
        .b(b),
        .c(c));
initial
begin
  $dumpfile("dump.vcd");
        $dumpvars(0,block_assign_tes);
        din = 1'b1;
        clk = 1'b0;
end
always #2 clk = clk + 1'b1;
endmodule
