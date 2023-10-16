// Code your design here
module twin_reg_set_8_bit(Q1,Q2,clk,rst,D1,D2);
  input clk,rst;
  input [7:0] D1,D2;
  output reg [7:0] Q1,Q2;
  
  always @(posedge clk)
    begin 
      if(rst) begin
        Q1 <= 8'b0;
        Q2 <= 8'b0;
      end
      else begin
        Q1 <= D1;
        Q2 <= D2;
      end
    end
endmodule
