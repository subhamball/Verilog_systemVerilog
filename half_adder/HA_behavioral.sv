// Code your design here
module HA_behavioral (S,C,A,B);
  input A,B;
  output reg S,C;
  always@(A,B)
    begin
      S=A^B;
      C=A&B;
    end
endmodule
