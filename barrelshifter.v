module barrelshifter(x,amt,y);
input [7:0]x;
input [2:0]amt;
output reg[7:0]y;

always@(*) 
    case(amt)
     3'b000: y=x;
     3'b001: y = {x[0],x[7:1]};
     3'b010: y = {x[1:0],x[7:2]};
     3'b011: y = {x[2:0],x[7:3]};
     3'b100: y = {x[3:0],x[7:4]};
     3'b101: y = {x[4:0],x[7:5]};
     3'b110: y = {x[5:0],x[7:6]};
     3'b111: y = {x[6:0],x[7]};
     default: y=x;
    endcase
endmodule
     