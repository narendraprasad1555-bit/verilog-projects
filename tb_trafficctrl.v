//===============================================================================================================
//DFT Training institute pvt Limited
//
//copyrights (C)2024 DFT Training Institute Pvt LTD
//
//All rights reserved
//
//Project  : designing traffic controller using behaviour level modelling
//module   : 
//Author   :Narendra prasad.R
//Date     :11/06/2024
//Description :
//
//version  :v1.1
//
//Revision updates
//0.1-11/06/2024-initial
//
//===============================================================================================================
//test bench declaration
module tb_tc;
//data declaration
reg x,clk,reset;
wire [1:0]hwy,cntry;
//instantiation
tc o1(.x(x),.clk(clk),.reset(reset),.hwy(hwy),.cntry(cntry));
//clock declaration
initial
begin
	clk=1'b0;
	forever #5 clk=~clk;
end
//reset declaration
initial
begin
	reset=1'b1;
	repeat (5)@(negedge clk);
	reset=1'b0;
end
//timing declaration
initial
begin
	x=1'b0;
	repeat(20)@(negedge clk); x=1'b1;
	repeat(10)@(negedge clk); x=1'b0;
	repeat(20)@(negedge clk); x=1'b1;
	repeat(10)@(negedge clk); x=1'b0;
	repeat(20)@(negedge clk); x=1'b1;
	repeat(10)@(negedge clk); x=1'b0;
	repeat(10)@(negedge clk); $finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_tc.vcd");
	$dumpvars(0,tb_tc);
end
endmodule
