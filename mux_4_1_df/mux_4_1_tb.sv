// Code your testbench here
// or browse Examples
module tb;
  reg I0,I1,I2,I3,S0,S1;
  wire Y;
  
  mux_4_1_st DUT(Y,I0,I1,I2,I3,S0,S1);
  
 initial begin
   $monitor("I0=%d,I1=%d,I2=%d,I3=%d,S0=%d,S1=%d,Y=%d",I0,I1,I2,I3,S0,S1,Y);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end

  initial begin
    {I0,I1,I2,I3}=4'b1010;
    {S0,S1}=2'd0;
    repeat(8)
      #10 {S0,S1}=$random;
  end
endmodule
