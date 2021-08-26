module controlword(mag,t);
input [6:0]mag;
output reg [2:0]t;
always@(*) 
begin
if (mag[6]==1)
   t=3'b000;
else if (mag[5]==1)
   t=3'b001; 
else if (mag[4]==1)
   t=3'b101;   
else if (mag[3]==1)
   t=3'b011;
else if (mag[2]==1)
   t=3'b100;
else if (mag[1]==1)
   t=3'b101; 
else if (mag[0]==1) 
   t=3'b110;       
else 
   t=3'b111;
   
end
endmodule
