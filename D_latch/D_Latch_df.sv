// Code your design here
module D_Latch_df(Q,D,En);
  input D,En;
  output Q;
  
  assign Q=En?D:Q;
endmodule
