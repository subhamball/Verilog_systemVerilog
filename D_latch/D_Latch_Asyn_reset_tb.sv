// Code your testbench here
// or browse Examples
module D_Latch_tb;
  reg D,En,rst;
  wire Q;
  
 D_Latch_Asyn_reset_bf DUT(Q,D,En,rst);
  
  initial begin
    $monitor("D=%b, En=%b,rst=%b, Q=%b",D,En,rst,Q);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    D=0;En=0;rst=0;
    #10;D=1;En=1;
    #10;D=0;
    #10;D=1;
    #10;D=0;
    #10;D=1;rst=1;
    #10;D=1;
    #10;D=0;
    #10;D=1;En=1;rst=0;
    #10;D=0;
    #10;D=1;En=0;
    #10;D=0;
    #10;D=1;
    #10 $finish;
  end
endmodule
