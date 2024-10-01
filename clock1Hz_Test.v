module clock1Hz_test;
reg clk;
wire newclk;
clock1Hz x1(clk,newclk);
always
# 5 clk=~clk;
initial
begin
clk=0;
# 2000000000 $stop;
end
endmodule