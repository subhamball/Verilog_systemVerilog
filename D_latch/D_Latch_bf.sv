// Code your design here
module D_Latch_bf(Q,D,En);
  input D,En;
  output reg Q;
  
  always @(D,En)
    begin
      if(En) Q=D;
      //else Q=Q;
    end
endmodule
