module adaptfileightinput(xin,clk,rst,x0,x1,x2,x3);

input signed [7:0] xin;
input clk,rst;
output reg signed [7:0]x0,x1,x2,x3;


reg [7:0]count;
always@(posedge clk)
begin
     if(rst)
        count = 0;
     else 
        count = count+1;
end




always@(posedge clk)
begin
     case(count)
    0:x0=xin;
    1:x1=xin;
    2:x2=xin;
    3:x3=xin;
     endcase
end

endmodule
