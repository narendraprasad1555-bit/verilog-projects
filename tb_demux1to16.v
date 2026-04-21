
module tb_demux1to16;
//data type declaraction
reg  tb_s3,tb_s2,tb_s1,tb_s0,tb_i;
wire tb_y0,tb_y1,tb_y2,tb_y3,tb_y4,tb_y5,tb_y6,tb_y7,tb_8,tb_y9,tb_y10,tb_y11,tb_y12,tb_y13,tb_y14,tb_y15;
//instantiation
demux1to16 o1(.y0(tb_y0),.y1(tb_y1),.y2(tb_y2),.y3(tb_y3),.y4(tb_y4),.y5(tb_y5),.y6(tb_y6),.y7(tb_y7),.y8(tb_y8),.y9(tb_y9),.y10(tb_y10),.y11(tb_y11),.y12(tb_y12),.y13(tb_y13),.y14(tb_y14),.y15(y_15),.i(tb_i),.s3(tb_s3),.s2(tb_s2),.s1(tb_s1),.s0(tb_s0));
//timing delaration
initial
begin
        tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b0; tb_s1=1'b0; tb_s0=1'b0;
	#5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b0; tb_s1=1'b0; tb_s0=1'b1;	
	#5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b0; tb_s1=1'b1; tb_s0=1'b0;
        #5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b0; tb_s1=1'b1; tb_s0=1'b1;
	#5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b1; tb_s1=1'b0; tb_s0=1'b0;
	#5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b1; tb_s1=1'b0; tb_s0=1'b1;
        #5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b1; tb_s1=1'b1; tb_s0=1'b0;
        #5 tb_i=1'b1; tb_s3=1'b0; tb_s2=1'b1; tb_s1=1'b1; tb_s0=1'b1;
        #5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b0; tb_s1=1'b0; tb_s0=1'b0;
        #5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b0; tb_s1=1'b0; tb_s0=1'b1;
        #5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b0; tb_s1=1'b1; tb_s0=1'b0;
        #5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b0; tb_s1=1'b1; tb_s0=1'b1;
	#5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b1; tb_s1=1'b0; tb_s0=1'b0;
	#5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b1; tb_s1=1'b0; tb_s0=1'b1;
	#5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b1; tb_s1=1'b1; tb_s0=1'b0;		
	#5 tb_i=1'b1; tb_s3=1'b1; tb_s2=1'b1; tb_s1=1'b1; tb_s0=1'b1;
        #50 $finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_demux1to16.vcd");
	$dumpvars(0,tb_demux1to16);
end
endmodule
