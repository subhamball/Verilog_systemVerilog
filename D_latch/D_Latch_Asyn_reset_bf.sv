// Code your design here
module D_Latch_Asyn_reset_bf(Q,D,En,rst);
  input D,En,rst;
  output reg Q;
  
  always @(D,En)
    begin
      if(rst) Q=1'b0;
      else if(En) Q=D;
    end
endmodule
