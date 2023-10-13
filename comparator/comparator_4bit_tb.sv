// Code your testbench here
// or browse Examples
module comparator_tb;
  reg [3:0] A,B;
  wire E,G,L;
  
  comparator_4_bit_bf DUT(A,B,E,G,L);
  
  initial begin
    $monitor("A=%d,B=%d,E=%b,G=%b,L=%b",A,B,E,G,L);
    $dumpfile("dump.vcd");
    $dumpvars(0);
   end
  
   
  
  initial begin
    A=4'd0;B=4'd0;
    #10 A=4'd11;B=4'd7;
    #10 A=4'd13;B=4'd14;
    #10 A=4'd3;B=4'd7;
    #10 A=4'd15;B=4'd13;
    #10 $finish;
  end
endmodule 
