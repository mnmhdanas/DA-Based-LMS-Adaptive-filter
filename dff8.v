module dff8(Din,Q,clk,rst);
input signed  [7:0]Din;
input clk,rst;
output reg signed [7:0] Q;
always@(posedge clk)
begin
if(rst)
Q<=0;
else
Q<=Din;
end
endmodule
