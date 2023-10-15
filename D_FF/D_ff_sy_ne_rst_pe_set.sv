//positive edge triggered D-flipflop synchronous active low reset and ative high set 
module D_ff_sy_ne_rst_pe_set(Q,D,clk,rst,set);
  input D,clk,rst,set;
  output reg Q;
  
  always @(posedge clk )
    begin
      if(!rst) Q <= 1'b0; 
      else if(set) Q <= 1'b1;
      else Q <= D;
    end
endmodule
