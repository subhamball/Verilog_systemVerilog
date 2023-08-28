module tb;
  reg a;
  wire y;
  integer i;
  
  not_gate DUT(a,y);
  
  initial begin
    $monitor("a=%0b, y=%0b",a,y);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    a=0;
    #10;a=1;
    #10;$finish;
  end
endmodule