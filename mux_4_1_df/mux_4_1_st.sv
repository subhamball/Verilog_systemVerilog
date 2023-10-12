// Code your design here
module mux_4_1_st(Y,I0,I1,I2,I3,S0,S1);
  input I0,I1,I2,I3,S0,S1;
  output Y;
  wire Y0,Y1;
  
  mux_2_1_df mux1(Y0,I0,I1,S0);
  mux_2_1_df mux2(Y1,I3,I4,S0);
  mux_2_1_df mux3(Y,I0,I1,S0);
  
endmodule

module mux_2_1_df(Y,I0,I1,S);
  input I0,I1;
  input S;
  output Y;
  
  assign Y = S?I1:I0;
endmodule
