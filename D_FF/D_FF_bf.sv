// Verilog code for rising edge D flip flop
module D_FF_bf(Q,D,clk);
  input D,clk;
  output reg Q;
  
  always @(posedge clk)
      if (clk) Q <= D;
endmodule
