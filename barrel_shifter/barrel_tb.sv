module barrel_tb;
  reg [7:0] in;
  reg [2:0] n;
  reg lr;
  wire [7:0] out;
  
  barrel_shifter_bf DUT(out,in,n,lr);
  
  initial begin
    $monitor("in=%b, n=%b, lr=%b, out=%b",in,n,lr,out);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    in=0; n=0; lr=0;
    #10; in=16; n=2; lr=1;
    #10; in=16; n=2; lr=0;
    #10; in=7; n=3; lr=1;
    #10; in=7; n=3; lr=0;
    #10; $finish;
  end
endmodule
