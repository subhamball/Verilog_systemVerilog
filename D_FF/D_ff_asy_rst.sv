//positive edge triggered D-flipflop asynchronous active high reset 
module D_ff_pe_asy_rst(Q,D,clk,rst);
  input D,clk,rst;
  output reg Q;
  
  always @(posedge clk or posedge rst)
    begin
      if(rst) Q <= 1'b0;
      else Q <= D;
    end
endmodule
