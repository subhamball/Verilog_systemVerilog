module comparator_tb;
  reg A,B;
  wire E,G,L;
  
  comparator_1_bit DUT(A,B,E,G,L);
  
    initial begin
      $monitor("A=%b,B=%b,E=%b,G=%b,L=%b",A,B,E,G,L);
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end
  
  initial begin
    A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
    #10 $finish;
  end
endmodule
