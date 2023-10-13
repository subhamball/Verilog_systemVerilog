module decoder_tb;
  reg [2:0] I;
  reg En;
  wire [7:0] Y;
  
  decoder_3_8_bf DUT(Y,I,En);
  
  initial begin
    $monitor("En=%b,I=%b,Y=%b",En,I,Y);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    I=0;
    En=0;
    #10 I=3;En=1;
    #10 I=5;
    #10 I=6;
    #10 I=7;
    #10 $finish;
    end
endmodule
