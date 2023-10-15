//positive edge triggered D-flipflop asynchronous active low reset and ative high set
module D_ff_ne_asy_ne_rst_pe_set(Q,D,clk,rst,set);
  input D,clk,rst,set;
  output reg Q;
  
  always @(posedge clk or negedge rst or posedge set)
    begin
      if(!rst) Q <= 1'b0;
      else if(set) Q<= 1'b1; 
      else Q <= D;
    end
endmodule
