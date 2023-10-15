// Code your testbench here
// or browse Examples
module D_Latch_tb;
  reg D,En;
  wire Q;
  
  D_Latch_bf DUT(Q,D,En);
  
  initial begin
    $monitor("D=%b, En=%b, Q=%b",D,En,Q);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    D=0;En=0;
    #10;D=1;En=1;
    #10;D=0;
    #10;D=1;
    #10;D=0;
    #10;D=1;En=0;
    #10;D=0;
    #10;D=1;
    #10;D=0;
    #10 $finish;
  end
endmodule
