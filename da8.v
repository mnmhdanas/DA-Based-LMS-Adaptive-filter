module da8 (clk,rst,x0,x1,x2,x3,w0,w1,w2,w3,filter_out);
	input clk,rst;
	
	
    wire [79:0]yy;   
    reg signed [18:0] y_out;  // filter output 
    input signed [7:0] x0,x1,x2,x3;   //
	input [7:0] w0,w1,w2,w3;
	integer i;
	output signed [9:0] filter_out;
	
	
     
    
	 
	 ////////////////////////////////////////
	 /////assigning address - ROM contents///
	 ////////////////////////////////////////
	 
	 wire	[3:0]	lut_addr0_0  = {w3[0],w2[0], w1[0], w0[0]};
     wire	[3:0]	lut_addr1_0  = {w3[1],w2[1], w1[1], w0[1]};
     wire	[3:0]	lut_addr2_0  = {w3[2],w2[2], w1[2], w0[2]};
     wire	[3:0]	lut_addr3_0  = {w3[3],w2[3], w1[3], w0[3]};
     wire	[3:0]	lut_addr4_0  = {w3[4],w2[4], w1[4], w0[4]};
     wire	[3:0]	lut_addr5_0  = {w3[5],w2[5], w1[5], w0[5]};
     wire	[3:0]	lut_addr6_0  = {w3[6],w2[6], w1[6], w0[6]};
     wire	[3:0]	lut_addr7_0  = {w3[7],w2[7], w1[7], w0[7]};
     
     
   
     
     
      reg signed   [9:0]	lut0_out;
      reg signed	 [9:0]	lut1_out;
      reg signed	 [9:0]	lut2_out;
      reg signed	 [9:0]	lut3_out;
      reg signed   [9:0]	lut4_out;
      reg signed	 [9:0]	lut5_out;
      reg signed	 [9:0]	lut6_out;
      reg signed	 [9:0]	lut7_out;
     
     
     
     
     
	 
	////////////////////////////////////////
	//// accessing LUT/ROM contents/////////
    ////////////////////////////////////////

always @(lut_addr0_0)
begin
	case(lut_addr0_0)
	4'b0000:	lut0_out = 0;
	4'b0001:	lut0_out = x0;	
	4'b0010:	lut0_out = x1;
	4'b0011:	lut0_out = x1+x0;
	4'b0100:	lut0_out = x2;
	4'b0101:	lut0_out = x2+x0;
	4'b0110:	lut0_out = x2+x1;
	4'b0111:	lut0_out = x2+x1+x0;
	4'b1000:	lut0_out = x3;
	4'b1001:	lut0_out = x3+x0;
	4'b1010:	lut0_out = x3+x1;
	4'b1011:	lut0_out = x3+x1+x0;
	4'b1100:	lut0_out = x3+x2;
	4'b1101:	lut0_out = x3+x2+x0;
	4'b1110:	lut0_out = x3+x2+x1;
	4'b1111:	lut0_out = x3+x2+x1+x0;
	default:lut0_out = 0;
	endcase
end


always @(lut_addr1_0)
begin
	case(lut_addr1_0)
	4'b0000:	lut1_out = 0;
	4'b0001:	lut1_out = x0;	
	4'b0010:	lut1_out = x1;
	4'b0011:	lut1_out = x1+x0;
	4'b0100:	lut1_out = x2;
	4'b0101:	lut1_out = x2+x0;
	4'b0110:	lut1_out = x2+x1;
	4'b0111:	lut1_out = x2+x1+x0;
	4'b1000:	lut1_out = x3;
	4'b1001:	lut1_out = x3+x0;
	4'b1010:	lut1_out = x3+x1;
	4'b1011:	lut1_out = x3+x1+x0;
	4'b1100:	lut1_out = x3+x2;
	4'b1101:	lut1_out = x3+x2+x0;
	4'b1110:	lut1_out = x3+x2+x1;
	4'b1111:	lut1_out = x3+x2+x1+x0;
	default:lut1_out = 0;
	endcase
end	 
	 
	 
	 
always @(lut_addr2_0)
begin
	case(lut_addr2_0)
	4'b0000:	lut2_out = 0;
	4'b0001:	lut2_out = x0;	
	4'b0010:	lut2_out = x1;
	4'b0011:	lut2_out = x1+x0;
	4'b0100:	lut2_out = x2;
	4'b0101:	lut2_out = x2+x0;
	4'b0110:	lut2_out = x2+x1;
	4'b0111:	lut2_out = x2+x1+x0;
	4'b1000:	lut2_out = x3;
	4'b1001:	lut2_out = x3+x0;
	4'b1010:	lut2_out = x3+x1;
	4'b1011:	lut2_out = x3+x1+x0;
	4'b1100:	lut2_out = x3+x2;
	4'b1101:	lut2_out = x3+x2+x0;
	4'b1110:	lut2_out = x3+x2+x1;
	4'b1111:	lut2_out = x3+x2+x1+x0;
	default:lut2_out = 0;
	endcase
end	 
	 
	 
always @(lut_addr3_0)
begin
	case(lut_addr3_0)
	4'b0000:	lut3_out = 0;
	4'b0001:	lut3_out = x0;	
	4'b0010:	lut3_out = x1;
	4'b0011:	lut3_out = x1+x0;
	4'b0100:	lut3_out = x2;
	4'b0101:	lut3_out = x2+x0;
	4'b0110:	lut3_out = x2+x1;
	4'b0111:	lut3_out = x2+x1+x0;
	4'b1000:	lut3_out = x3;
	4'b1001:	lut3_out = x3+x0;
	4'b1010:	lut3_out = x3+x1;
	4'b1011:	lut3_out = x3+x1+x0;
	4'b1100:	lut3_out = x3+x2;
	4'b1101:	lut3_out = x3+x2+x0;
	4'b1110:	lut3_out = x3+x2+x1;
	4'b1111:	lut3_out = x3+x2+x1+x0;
	default:lut3_out = 0;
	endcase
end


always @(lut_addr4_0)
begin
	case(lut_addr4_0)
	4'b0000:	lut4_out = 0;
	4'b0001:	lut4_out = x0;	
	4'b0010:	lut4_out = x1;
	4'b0011:	lut4_out = x1+x0;
	4'b0100:	lut4_out = x2;
	4'b0101:	lut4_out = x2+x0;
	4'b0110:	lut4_out = x2+x1;
	4'b0111:	lut4_out = x2+x1+x0;
	4'b1000:	lut4_out = x3;
	4'b1001:	lut4_out = x3+x0;
	4'b1010:	lut4_out = x3+x1;
	4'b1011:	lut4_out = x3+x1+x0;
	4'b1100:	lut4_out = x3+x2;
	4'b1101:	lut4_out = x3+x2+x0;
	4'b1110:	lut4_out = x3+x2+x1;
	4'b1111:	lut4_out = x3+x2+x1+x0;
	default:lut4_out = 0;
	endcase
end



always @(lut_addr5_0)
begin
	case(lut_addr5_0)
	4'b0000:	lut5_out = 0;
	4'b0001:	lut5_out = x0;	
	4'b0010:	lut5_out = x1;
	4'b0011:	lut5_out = x1+x0;
	4'b0100:	lut5_out = x2;
	4'b0101:	lut5_out = x2+x0;
	4'b0110:	lut5_out = x2+x1;
	4'b0111:	lut5_out = x2+x1+x0;
	4'b1000:	lut5_out = x3;
	4'b1001:	lut5_out = x3+x0;
	4'b1010:	lut5_out = x3+x1;
	4'b1011:	lut5_out = x3+x1+x0;
	4'b1100:	lut5_out = x3+x2;
	4'b1101:	lut5_out = x3+x2+x0;
	4'b1110:	lut5_out = x3+x2+x1;
	4'b1111:	lut5_out = x3+x2+x1+x0;
	default:lut5_out = 0;
	endcase
end



always @(lut_addr6_0)
begin
	case(lut_addr6_0)
	4'b0000:	lut6_out = 0;
	4'b0001:	lut6_out = x0;	
	4'b0010:	lut6_out = x1;
	4'b0011:	lut6_out = x1+x0;
	4'b0100:	lut6_out = x2;
	4'b0101:	lut6_out = x2+x0;
	4'b0110:	lut6_out = x2+x1;
	4'b0111:	lut6_out = x2+x1+x0;
	4'b1000:	lut6_out = x3;
	4'b1001:	lut6_out = x3+x0;
	4'b1010:	lut6_out = x3+x1;
	4'b1011:	lut6_out = x3+x1+x0;
	4'b1100:	lut6_out = x3+x2;
	4'b1101:	lut6_out = x3+x2+x0;
	4'b1110:	lut6_out = x3+x2+x1;
	4'b1111:	lut6_out = x3+x2+x1+x0;
	default:lut6_out = 0;
	endcase
end


	 
	 
always @(lut_addr7_0)    // msb bit 
begin
	case(lut_addr7_0)
	4'b0000:	lut7_out = 0;
	4'b0001:	lut7_out = -x0;	
	4'b0010:	lut7_out = -x1;
	4'b0011:	lut7_out = -(x1+x0);
	4'b0100:	lut7_out = -x2;
	4'b0101:	lut7_out = -(x2+x0);
	4'b0110:	lut7_out = -(x2+x1);
	4'b0111:	lut7_out = -(x2+x1+x0);
	4'b1000:	lut7_out = -x3;
	4'b1001:	lut7_out = -(x3+x0);
	4'b1010:	lut7_out = -(x3+x1);
	4'b1011:	lut7_out = -(x3+x1+x0);
	4'b1100:	lut7_out = -(x3+x2);
	4'b1101:	lut7_out = -(x3+x2+x0);
	4'b1110:	lut7_out = -(x3+x2+x1);
	4'b1111:	lut7_out = -(x3+x2+x1+x0);
	default: lut7_out = 0;
	endcase
end	 
	 
//////////////////////////////////////
//// ROM outputs as single vector ////
//////////////////////////////////////

	 assign yy = {lut7_out,lut6_out,lut5_out,lut4_out,lut3_out,lut2_out,lut1_out,lut0_out};

///////////////////////////////////
/// shift accumulation process/////
///////////////////////////////////	 
	 always @ (posedge clk)
	 begin
	      if(rst)
	       y_out <= 0;
	      else
	        begin  
	          y_out = 0;
              for(i=10;i<81;i=i+10)
                 begin
                   case(i) 
	                  10: begin
	                       y_out = (({yy[10-1:10-10],8'b0})+y_out) ;
	                       y_out = y_out >>> 1;
	                     end  
	                  
	                  20: begin
	                       y_out = (({yy[20-1:20-10],8'b0000000000})+y_out) ;
	                       y_out = y_out >>> 1;
	                      end  
	                  
	                  30: begin
	                        y_out = (({yy[30-1:30-10],8'b0000000000})+y_out) ;
	                        y_out = y_out >>> 1;
	                      end  
	                  
	                  40: begin
	                        y_out = (({yy[40-1:40-10],8'b0000000000})+y_out) ;
	                        y_out = y_out >>> 1;
	                      end  
	                  50: begin
	                       y_out = (({yy[50-1:50-10],8'b0000000000})+y_out) ;
	                       y_out = y_out >>> 1;
	                     end  
	                  
	                  60: begin
	                       y_out = (({yy[60-1:60-10],8'b0000000000})+y_out) ;
	                       y_out = y_out >>> 1;
	                      end  
	                  
	                  70: begin
	                        y_out = (({yy[70-1:70-10],8'b0000000000})+y_out) ;
	                        y_out = y_out >>> 1;
	                      end  
	                  
	                  80: begin
	                        y_out = (({yy[80-1:80-10],8'b0000000000})+y_out) ;
	                        y_out = y_out >>> 1;
	                      end
	                  default: y_out<= 0;
	               endcase
	             end
	        end
	  end     
/////////////////////////////////////////
////
////////////////////////////////////////	
//wire signed [8:0]
assign filter_out = y_out[9:0];


endmodule
