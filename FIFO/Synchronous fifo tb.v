module fifo_tb;
  wire [7:0] DATAOUT;
  wire full, empty;
  reg clock, reset, wn, rn;
  reg [7:0] DATAIN;  
  
  fifo fifo_test(DATAOUT, full, empty, clock, reset, wn, rn, DATAIN);
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end

  initial
  begin
    clock = 0; DATAIN = 8'd0;
    reset = 1; clock = 1; #5 ; clock = 0; #5;
    reset = 0;
    
    $display("Start testing");
    wn = 1; rn = 0;
    DATAIN = 8'd100;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd150;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd200;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd40;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd70;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd65;
    clock = 1; #5 ; clock = 0; #5;
    DATAIN = 8'd15;
    clock = 1; #5 ; clock = 0; #5;
   
    wn = 0; rn = 1;
    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd100 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd150 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd200 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd40 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd70 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd65 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( DATAOUT === 8'd15 )
      $display("PASS %p ", DATAOUT);
    else
      $display("FAIL %p ", DATAOUT);

    clock = 1; #5 ; clock = 0; #5;
    if ( empty === 1 )
      $display("PASS %p ", empty);
    else
      $display("FAIL %p ", empty);
  end

endmodule
