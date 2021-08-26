module adaptfilsixteeninput(xin,clk,rst,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
input signed [7:0] xin;
input clk,rst;
output reg signed [7:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;


reg [7:0]count;
always@(posedge clk)
begin
     if(rst)
        count = 0;
     else 
        count = count+1;
end


//reg signed [7:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

always@(posedge clk)
begin
     case(count)
    0:x0=xin;
    1:x1=xin;
    2:x2=xin;
    3:x3=xin;
    4:x4=xin;
    5:x5=xin;
    6:x6=xin;
    7:x7=xin;
    8:x8=xin;
    9:x9=xin;
    10:x10=xin;
    11:x11=xin;
    12:x12=xin;
    13:x13=xin;
    14:x14=xin;
    15:x15=xin;
     endcase
end


endmodule
