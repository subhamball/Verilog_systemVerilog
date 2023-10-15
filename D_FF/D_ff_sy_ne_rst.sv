//positive edge D flip flop synchronous active low reset 
module D_ff_sy_ne_rst(Q,D,clk,rst);
  input D,clk,rst;
  output reg Q;
  
  always @(posedge clk )
    begin
      if(!rst) Q <= 1'b0; 
      else Q <= D;
    end
endmodule
