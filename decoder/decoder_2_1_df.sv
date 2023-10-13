module decoder_2_4_df(Y,I,En);
  input [1:0] I;
  input En;
  output [3:0] Y;
  
  assign Y= {En & ~I[1] & ~I[0],
             En & ~I[1] & I[0],
             En & I[1] & ~I[0],
             En & I[1] & I[0]};
endmodule
