module tb;
  reg a,b,cin;
  wire sum,carry;
  integer i;
  
  full_adder DUT( a,b,cin,sum,carry);
  
  initial begin
    $monitor("a=%0d,b=%0d,cin=%0d,sum=%0d,,carry=%0d",a,b,cin,sum,carry);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
    
  initial begin
    for(i=0;i<8;i++) begin
      #10; {a,b,cin} =i;
    end
    #10; $finish;
  end
    
  
endmodule
      
      