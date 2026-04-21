
//module declaration
module  demux1to16(y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,i,s3,s2,s1,s0);
//port declaration
input i,s3,s2,s1,s0;
output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
//gate instantiation
assign y0=~s3&~s2&~s1&~s0;
assign y1=~s3&~s2&~s1&s0;
assign y2=~s3&~s2&s1&~s0;
assign y3=~s3&~s2&s1&s0;
assign y4=~s3&s2&~s1&~s0;
assign y5=~s3&s2&~s1&s0;
assign y6=~s3&s2&s1&~s0;
assign y7=~s3&s2&s1&s0;
assign y8=s3&~s2&~s1&~s0;
assign y9=s3&~s2&~s1&s0;
assign y10=s3&~s2&s1&~s0;
assign y11=s3&~s2&s1&s0;
assign y12=s3&s2&~s1&~s0;
assign y13=s3&s2&~s1&s0;
assign y14=s3&s2&s1&~s0;
assign y15=s3&s2&s1&s0;
//end module declaration
endmodule
