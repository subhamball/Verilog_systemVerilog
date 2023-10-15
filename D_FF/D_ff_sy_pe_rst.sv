//positive edge D flip flop synchronous active high reset 
module D_ff_sy_pe_rst(Q,D,clk,rst);
  input D,clk,rst;
  output reg Q;
  
  always @(posedge clk )
    begin
      if(rst) Q <= 1'b0; 
      else Q <= D;
    end
endmodule
