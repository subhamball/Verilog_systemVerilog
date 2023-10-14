// Code your design here
module ALU(Out,Opcode,A,B,N_bit);
  input [7:0] A,B;
  input [3:0] Opcode,N_bit;
  output reg [15:0] Out;
  
  always @(*)
    begin
      case(Opcode)
        4'b0000 : Out = A + B;
        4'b0001 : Out = A - B;
        4'b0010 : Out = A * B;
        4'b0011 : Out = A / B;
        4'b0100 : Out = A >> N_bit;
        4'b0101 : Out = A << N_bit;
        4'b0110 : Out = A ^ B;
        4'b0111 : Out = A & B;
        4'b1000 : Out = A | B;
        4'b1001 : Out = A ~^ B;
        4'b1010 : Out = {A[6:0],A[7]};//rotate left
        4'b1011 : Out = {A[0],A[7:1]};//rotate right
        4'b1100 : Out = &A;
        4'b1101 : Out = |A;
        4'b1110 : Out = ^A ;
        4'b1111 : Out = ~^A;
        default : Out = 16'd0;
      endcase
    end
endmodule
