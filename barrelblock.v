module barrelblock(xn2,xn3,xn4,xn5,t,sign,clk,rst,y2,y3,y4,y5);
input signed [7:0]xn2,xn3,xn4,xn5;
input [2:0]t;
input clk,rst;
input sign;///  sign == 1  => sub else add
wire signed [7:0]yn2,yn3,yn4,yn5;  // rotated
output reg [7:0]y2,y3,y4,y5; 
wire signed [7:0]ynd2,ynd3,ynd4,ynd5;  // delayed rotated 

barrelshifter in1(xn2,t,yn2);
dff8 inn1(yn2,ynd2,clk,rst);

barrelshifter in2(xn3,t,yn3);
dff8 inn2(yn3,ynd3,clk,rst);

barrelshifter in3(xn4,t,yn4);
dff8 inn3(yn4,ynd4,clk,rst);

barrelshifter in4(xn5,t,yn5);
dff8 inn4(yn5,ynd5,clk,rst);

always @(*)
if(sign==0)
 begin
  y2=yn2+ynd2;
  y3=yn3+ynd3;
  y4=yn4+ynd4;
  y5=yn5+ynd5;
 end
 
 else
 begin
  y2=yn2-ynd2;
  y3=yn3-ynd3;
  y4=yn4-ynd4;
  y5=yn5-ynd5;
 end
 endmodule 
 
     