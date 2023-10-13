// that design will generate a 9*1 mux at the synthesis stage
module decoder_3_8_bf(Y,I,En);
  input [2:0] I;
  input En;
  output reg [7:0] Y;
  
  always @(*)
    begin
      case({En,I})
        4'b1000 : Y=8'b00000001;
        4'b1001 : Y=8'b00000010;
        4'b1010 : Y=8'b00000100;
        4'b1011 : Y=8'b00001000;
        4'b1100 : Y=8'b00010000;
        4'b1101 : Y=8'b00100000;
        4'b1110 : Y=8'b01000000;
        4'b1111 : Y=8'b10000000;
        4'b0000,
        4'b0001,
        4'b0010,
        4'b0011,
        4'b0100,
        4'b0101,
        4'b0110,
        4'b0111 : Y=8'b00000000;
        default: $display("error");
      endcase
    end
      
endmodule
