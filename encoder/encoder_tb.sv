module encoder_tb;
  reg [3:0] I;
  wire [1:0] Y;
  wire V;
  
  encoder_4_2_df1 DUT(Y,V,I);
  initial begin
    $monitor("I=%b,Y%b,v=%b",I,Y,V);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    I=8;
    #10 I=4;
    #10 I=2;
    #10 I=1;
    #10 I=5;
    #10 I=0;
    #10 $finish;
  end 
endmodule
