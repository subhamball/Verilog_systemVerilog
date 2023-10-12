// Code your design here
module mux_2_1_bf(Y,I,S);
  input [1:0] I;
  input S;
  output reg Y;
  
  always @(*)
    begin
      if(S)
        Y=I[1];
      else
        Y=I[0];
    end
endmodule
