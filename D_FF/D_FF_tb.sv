// Code your testbench here
// or browse Examples
module D_FF_tb;
  reg D,clk,rst,set;
  wire Q;
  
  D_ff_sy_ne_rst_pe_set DUT(Q,D,clk,rst,set);
  
  initial begin
    $monitor("D=%b, clk=%b, rst=%b,set=%b, Q=%b",D,clk,rst,set,Q);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
   clk=0;
   forever #5 clk = ~clk;
  end
   //always #5 clk =~clk;
  
  initial begin
    D=0;rst=0;set=0;
    #10 D=1;
    #10 D=0;
    #10 rst=1;set=1;
    #10 D=1;
    #10 D=0;
    #10 rst=0;
    #5 D=1;
    #20 $finish;
    
  end
endmodule
