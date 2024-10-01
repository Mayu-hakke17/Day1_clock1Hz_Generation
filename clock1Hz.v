module clock1Hz(clk,newclk);
input clk;
output reg newclk=0;
integer count=0;
always@(posedge clk)
begin
if(count==50000000)
begin
newclk=~newclk;
count<=0;
end
else
count=count+1;
end
endmodule
