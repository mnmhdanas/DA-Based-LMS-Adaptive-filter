module adaptfiltsixteen(clk,rst,xin,din,errr,weight0,weight1,weight2,weight3,weight4,
                                weight5,weight6,weight7,weight8,weight9,weight10,weight11,
                                weight12,weight13,weight14,weight15,filt_out);
                                
input signed [7:0] xin;
input signed [11:0] din;
input clk,rst;
output signed [28:0] filt_out;
output signed [11:0] errr;
	
	
///////////////////////////////////////////////////////////////
wire signed [7:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

adaptfilsixteeninput ad16(xin,clk,rst,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);

///////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////

wire signed [9:0] y_out0,y_out1,y_out2,y_out3;


 da8 block0(clk,rst,x0,x1,x2,x3,weight0,weight1,weight2,weight3,y_out0);

 da8 block1(clk,rst,x4,x5,x6,x7,weight4,weight5,weight6,weight7,y_out1);


 da8 block2(clk,rst,x8,x9,x10,x11,weight8,weight9,weight10,weight11,y_out2);


 da8 block3(clk,rst,x12,x13,x14,x15,weight12,weight13,weight14,weight15,y_out3);


assign filt_out = y_out0 + y_out1 + y_out2 + y_out3;

assign errr = din - filt_out;

wire signed [7:0] err_s = errr >>> 4;

reg signed [7:0] err_d ;

always @ (posedge clk)
begin
   if(rst)
      err_d <= 0;
   else
      err_d <= err_s;
end


wire signed [6:0] mag;
wire signed sign;
signmag sm(err_d,sign,mag);



wire [2:0]t;
controlword cw(mag,t);

////////////////////////////////////

 wire signed [7:0] x16,x17;

dff8 xsixteen(x15,x16,clk,rst); 
dff8 xseventeen(x16,x17,clk,rst);

wire signed [7:0] y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17;

barrelblock b0(x2,x3,x4,x5,t,sign,clk,rst,y2,y3,y4,y5);

barrelblock b1(x6,x7,x8,x9,t,sign,clk,rst,y6,y7,y8,y9);

barrelblock b2(x10,x11,x12,x13,t,sign,clk,rst,y10,y11,y12,y13);

barrelblock b3(x14,x15,x16,x17,t,sign,clk,rst,y14,y15,y16,y17);

/////////////////////////////////////////////
output signed [7:0] weight0,weight1,weight2,weight3,weight4,weight5,weight6,weight7,weight8,
           weight9,weight10,weight11,weight12,weight13,weight14,weight15;

     assign weight0 = y2;
     assign weight1 = y3;
     assign weight2 = y4;
     assign weight3 = y5;
     assign weight4 = y6;
     assign weight5 = y7;
     assign weight6 = y8;
     assign weight7 = y9;
     assign weight8 = y10;
     assign weight9 = y11;
     assign weight10 = y12;
     assign weight11 = y13;
     assign weight12 = y14;
     assign weight13 = y15;
     assign weight14 = y16;
     assign weight15 = y17;


endmodule






