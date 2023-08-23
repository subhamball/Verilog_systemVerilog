module testbench;
  reg a,b,c;
  wire out;
  //integer i;
  minority_detector DUT(a,b,c,out);
  initial begin
    for(integer i=0;i<8;i++) begin
     #10; {a,b,c}= i;
    end
    #10; $finish;
  end
    
  initial begin
    $monitor(a,b,c,out);
     $dumpfile("dump.vcd");
    $dumpvars(0);
    end
endmodule