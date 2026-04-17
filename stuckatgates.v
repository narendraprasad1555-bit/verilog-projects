//===========================================================================================================
//DFT Training institute pvt Limited
//
//copyrights (C)2024 DFT Training Institute Pvt LTD
//
//All rights reserved
//
//Project  : designing stuckatgates using gate level modelling
//module   : stuckatgates 
////Author   :Narendra prasad.R
//Date     :29/05/2024
//Description :
//
//version  :v1.1
//
//Revision updates
//0.1-22/05/2024-initial
//
//==================================================================================================================
//module declaration
module stuckatgates(s0,s1,s2,s3,s4,s5,a,b,y);
//port declaration
input s0,s1,s2,s3,s4,s5,a,b;
output y;
wire w1,w2,w3;
//setup power
supply1 pwr;
supply0 gnd;
//instantiation
mux4to1 o1(w1,s0,s1,a,gnd,pwr,gnd);
mux4to1 o2(w2,s2,s3,b,gnd,pwr,gnd);
and o3(w3,w2,w1);
mux4to1 o4(y,s4,s5,w3,gnd,pwr,gnd);
//end declaration
endmodule

