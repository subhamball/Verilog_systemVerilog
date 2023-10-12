module mux_4_1_bf(Y,I,S);
  input [3:0] I;
  input [1:0] S;
  output reg Y;
  
  always @(*)
    begin
      if(S==0)
        Y=I[0];
      else if(S==1)
        Y=I[1];
      else if(S==2)
        Y=I[2];
      else
        Y=[3];
    end
endmodule
