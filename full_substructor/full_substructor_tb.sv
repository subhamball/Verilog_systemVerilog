module tb;
  reg a,b,bin;
  wire diff,bout;
  integer i;
  
  full_substructor DUT( a,b,bin,diff,bout);
  
  initial begin
    $monitor("a=%0d,b=%0d,bin=%0d,diff=%0d,,bout=%0d",a,b,bin,diff,bout);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
    initial begin
 
      for(i=0;i<8;i++) begin
          #10; {a,b,bin} = i;
        end
      #10;$finish;
    end

  
endmodule