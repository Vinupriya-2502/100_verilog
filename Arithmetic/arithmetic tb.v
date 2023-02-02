module arithmetic_tb;
reg a;
reg b;
wire c;
arithmetic arith(.a(a),.b(b),.c(c));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
        a=5;
        b=10;
        #5 $display("operation=%d",c);
        #10 $finish;
end
endmodule
