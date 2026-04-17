//===================================================================================================================
//DFT Training institute pvt Limited
//
//copyrights (C)2024 DFT Training Institute Pvt LTD
//
//All rights reserved
//
//Project  : designing halfadder gate using gate level modelling
//module   : full adder
//Author   :Narendra prasad.R
//Date     :24/05/2024
//Description :
//
//version  :v1.1
//
//Revision updates
//0.1-22/05/2024-initial
//
//===================================================================================================================
//module declaration
module halfadder(s,c,a,b);
//port declaration
input a,b;
output s,c;
//gate declaration
assign s=a^b;
assign c=a&b;
//end declaration
endmodule
