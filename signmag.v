module signmag(inp,sign,mag);
input signed [7:0]inp;
output sign;
output reg signed[6:0]mag;
assign sign = inp[7];

always @(*) begin

if(sign == 0)
mag = inp[6:0];

else if(sign == 1)
mag = -(inp[6:0]);

end
endmodule
