// that design will generate a 5*1 mux at the synthesis stage
module decoder_2_4_bf(Y,I,En);
  input [1:0] I;
  input En;
  output reg [3:0] Y;
  
  always @(En,I)
    begin
      case({En,I})
        3'b100 : Y=4'b0001;
        3'b101 : Y=4'b0010;
        3'b110 : Y=4'b0100;
        3'b111 : Y=4'b1000;
        3'b100,
        3'b100,
        3'b100,
        3'b100 : Y=4'b0000;
        default: $display("error");      
      endcase
    end
          
endmodule
