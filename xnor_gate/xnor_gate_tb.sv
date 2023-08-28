module tb;
  reg a,b;
  wire y;
  integer i;
  
  xnor_gate DUT(a,b,y);
  
  initial begin
    $monitor("a=%0b, b=%0b, y=%0b",a,b,y);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    for(i=0;i<4;i++) begin
      {a,b} = i;
      #10;
    end
    #10; $finish;
  end
endmodule