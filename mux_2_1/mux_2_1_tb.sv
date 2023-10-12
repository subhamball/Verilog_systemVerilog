// Code your testbench here
// or browse Examples
module tb;
  reg [1:0] I;
  reg S;
  wire Y;
  
  mux_2_1_df DUT(Y,I,S);
  
  initial begin
    $monitor("I=%d, S=%d,Y=%d",I,S,Y);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  initial begin
    I=0;
    S=0;
    #10 I=1;S=0;
    #10 I=1;S=1;
    #10 I=2;S=1;
    #10 I=2;S=0;
    #10 $finish;
  end
endmodule
