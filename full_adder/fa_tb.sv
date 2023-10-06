module tb;
  reg A,B,Cin;
  wire S,C;
  integer i;
  
  FA_structural DUT(S,C,A,B,Cin);
  
  initial begin
    $monitor("a=%0d,b=%0d,cin=%0d,sum=%0d,carry=%0d",A,B,Cin,S,C);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
    
  initial begin
    for(i=0;i<8;i++) begin
      #10; {A,B,Cin} =i;
    end
    #10; $finish;
  end
    
  
endmodule
