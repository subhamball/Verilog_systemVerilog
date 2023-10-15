//negetive edge triggered D-flipflop asynchronous active low reset
module D_ff_ne_asy_low_rst(Q,D,clk,rst);
  input D,clk,rst;
  output reg Q;
  
  always @(negedge clk or negedge rst)
    begin
      if(!rst) Q <= 1'b0;
      else Q <= D;
    end
endmodule
