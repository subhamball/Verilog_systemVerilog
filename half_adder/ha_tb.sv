module tb;
  reg A,B;
  wire S,C;
  
  HA_behavioral DUT(S,C,A,B);
  
  initial begin
     A=0;B=0;
    #10;A=0;B=1;
    #10; A=1;B=0;
    #10;A=1;B=1;
    #10;$finish;
    
  end
  initial begin
    $monitor("a=%0d,b=%0d,,sum=%0d,,carry=%0d",A,B,S,C);
     $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
