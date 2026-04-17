//===============================================================================================================
//DFT Training institute pvt Limited
//
//copyrights (C)2024 DFT Training Institute Pvt LTD
//
//All rights reserved
//
//Project  : designing 64bit alu using gate level modelling
//module   : 64bit alu using gate level modelling 
//Author   :Narendra prasad.R
//Date     :13/06/2024
//Description :
//
//version  :v1.1
//
//Revision updates
//0.1-13/06/2024-initial
//
//===============================================================================================================
//module declaration
module alu64bit(np,alucontrol,a,b);
//port declaration
input [63:0]a,b;
input [3:0]alucontrol;
output reg [63:0]np;
//instantiation
always@(*)
	case(alucontrol)
		4'b0000:np=a*b;
		4'b0001:np=a/b;
		4'b0010:np=a+b;
		4'b0011:np=a-b;
		4'b0100:np=a%b;
		4'b0101:np=a&b;
		4'b0110:np=~(a*b);
		4'b0111:np=~b;
		4'b1000:np=~a;
		4'b1001:np=a|b;
		4'b1010:np=a<b;
		4'b1011:np=a>b;
		4'b1100:np=a**b;
		4'b1101:np=a==b;
		4'b1110:np=a||b;
		4'b1111:np=a^b;
	endcase
//endmodule declaration
endmodule
