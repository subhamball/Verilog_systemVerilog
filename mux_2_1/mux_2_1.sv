// Code your design here
module mux_2_1(Y,I,S);
  input [1:0] I;
  input S;
  output Y;
  
  assign Y = I[S];
endmodule
