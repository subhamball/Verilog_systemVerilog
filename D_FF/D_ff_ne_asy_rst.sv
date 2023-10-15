//Negetive edge triggered D-flipflop asynchronous active high reset 
module D_ff_ne_asy_rst(Q,D,clk,rst);
  input D,clk,rst;
  output reg Q;
  
  always @(negedge clk or posedge rst)
    begin
      if(rst) Q <= 1'b0;
      else Q <= D;
    end
endmodule
