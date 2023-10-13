// Code your design here
module encoder_4_2_df1(Y,V,I);
  input [3:0] I;
  output [1:0] Y;
  output V;
  
  assign Y = {I[1] | I[0],I[2] | I[0]};
  assign V = |I;
   
endmodule
