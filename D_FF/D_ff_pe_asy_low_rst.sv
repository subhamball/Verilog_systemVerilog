//positive edge triggered D-flipflop asynchronous active low reset
module D_ff_pe_asy_low_rst(Q,D,clk,rst);
  input D,clk,rst;
  output reg Q;
  
  always @(posedge clk or negedge rst)
    begin
      if(!rst) Q <= 1'b0;
      else Q <= D;
    end
endmodule
