// Code your testbench here
// or browse Examples
module twin_reg_set_tb;
  reg clk,rst;
  reg [7:0] D1,D2;
  wire [7:0] Q1,Q2;
  
  twin_reg_set_8_bit DUT(Q1,Q2,clk,rst,D1,D2);
  
  initial begin
    $monitor("D1=%d, D2=%d, Q1=%d, Q2 =%d",D1,D2,Q1,Q2);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    D1=0;D2=0;rst=0;
    #10 D1=1;D2=10;
    #10 D1=17;D2=33;
    #10 D1=21;rst=1;
    #10 D2=16;
    #20 $finish;
  end
endmodule
