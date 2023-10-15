module D_FF_tb;
  reg D,clk;
  wire Q;
  
  D_FF_bf DUT(Q,D,clk);
  
  initial begin
    $monitor("D=%b,clk=%b;Q=%b",D,clk,Q);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
   clk=0;
   forever #5 clk = ~clk;
  end
   //always #5 clk =~clk;
  
  initial begin
    D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
    #10 $finish;
    
  end
endmodule
