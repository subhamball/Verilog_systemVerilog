module tb;
  reg a,b;
  wire dif,bow;
  
  half_substructor DUT(a,b,dif,bow);
  
  initial begin
     a=0;b=0;
    #10;a=0;b=1;
    #10; a=1;b=0;
    #10;a=1;b=1;
    #10;$finish;
    
  end
  initial begin
    $monitor("a=%0d,b=%0d,,dif=%0d,,bow=%0d",a,b,dif,bow);
     $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule