module encoder_4_2_df(Y1,Y0,I3,I2,I1,I0,V);
  input I3,I2,I1,I0;
  output Y1,Y0,V;
  
  assign Y0 = I2 + I0;
  assign Y1 = I1 + I0;
  assign V = I1 | I2 | I3 | I4;
  
endmodule
