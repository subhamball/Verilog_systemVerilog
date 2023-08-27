module tb;
  reg a,b;
  wire sum,carry;
  
  half_adder DUT(a,b,sum,carry);
  
  initial begin
     a=0;b=0;
    #10;a=0;b=1;
    #10; a=1;b=0;
    #10;a=1;b=1;
    #10;$finish;
    
  end
  initial begin
    $monitor("a=%0d,b=%0d,,sum=%0d,,carry=%0d",a,b,sum,carry);
     $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
    