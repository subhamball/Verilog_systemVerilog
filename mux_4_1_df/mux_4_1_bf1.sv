// Code your design here
module mux_4_1_bf(Y,I,S);
  input [3:0] I;
  input [1:0] S;
  output Y;
  
  always @(*)
    begin
      case(S)
        2'd0: Y=I[0];
        2'd1: Y=I[1];
        2'd2: Y=I[2];
        2'd3: Y=I[3];
        default:$dispaly("erroy");
      endcase
    end
endmodule
