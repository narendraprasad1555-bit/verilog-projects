
//test bench module declaration
module tb_stuckatgates;
//port declaration
reg s0,s1,s2,s3,s4,s5,a,b;
wire y;
//gate instantiation
stuckatgates o1(.s0(s0),.s1(s1),.s2(s2),.s3(s3),.s4(s4),.s5(s5),.a(a),.b(b),.y(y));
//timing declaration
initial
begin
	a=1'b0; b=1'b0;
	    s0=1'b0; s1=1'b0; s2=1'b0; s3=1'b0; s4=1'b0; s5=1'b0;
       	#15 s0=1'b0; s1=1'b0; s2=1'b0; s3=1'b1; s4=1'b0; s5=1'b0; 
	#15 s0=1'b0; s1=1'b0; s2=1'b1; s3=1'b0; s4=1'b0; s5=1'b0; 
        #15 s0=1'b0; s1=1'b1; s2=1'b0; s3=1'b0; s4=1'b0; s5=1'b0; 
	#15 s0=1'b0; s1=1'b1; s2=1'b0; s3=1'b1; s4=1'b0; s5=1'b0; 
	#15 s0=1'b0; s1=1'b1; s2=1'b1; s3=1'b0; s4=1'b0; s5=1'b0; 
	#15 s0=1'b1; s1=1'b0; s2=1'b0; s3=1'b0; s4=1'b0; s5=1'b0; 
	#15 s0=1'b1; s1=1'b0; s2=1'b0; s3=1'b1; s4=1'b0; s5=1'b0; 
	#15 s0=1'b1; s1=1'b0; s2=1'b1; s3=1'b0; s4=1'b0; s5=1'b0;
        #15 s0=1'b0; s1=1'b0; s2=1'b0; s3=1'b0; s4=1'b0; s5=1'b1;
       	#15 s0=1'b0; s1=1'b0; s2=1'b0; s3=1'b1; s4=1'b0; s5=1'b1; 
	#15 s0=1'b0; s1=1'b0; s2=1'b1; s3=1'b0; s4=1'b0; s5=1'b1; 
        #15 s0=1'b0; s1=1'b1; s2=1'b0; s3=1'b0; s4=1'b0; s5=1'b1; 
	#15 s0=1'b0; s1=1'b1; s2=1'b0; s3=1'b1; s4=1'b0; s5=1'b1; 
	#15 s0=1'b0; s1=1'b1; s2=1'b1; s3=1'b0; s4=1'b0; s5=1'b1; 
	#15 s0=1'b1; s1=1'b0; s2=1'b0; s3=1'b0; s4=1'b0; s5=1'b1; 
	#15 s0=1'b1; s1=1'b0; s2=1'b0; s3=1'b1; s4=1'b0; s5=1'b1; 
	#15 s0=1'b1; s1=1'b0; s2=1'b1; s3=1'b0; s4=1'b0; s5=1'b1;
        #15 s0=1'b0; s1=1'b0; s2=1'b0; s3=1'b0; s4=1'b1; s5=1'b0;
       	#15 s0=1'b0; s1=1'b0; s2=1'b0; s3=1'b1; s4=1'b1; s5=1'b0; 
	#15 s0=1'b0; s1=1'b0; s2=1'b1; s3=1'b0; s4=1'b1; s5=1'b0; 
        #15 s0=1'b0; s1=1'b1; s2=1'b0; s3=1'b0; s4=1'b1; s5=1'b0; 
	#15 s0=1'b0; s1=1'b1; s2=1'b0; s3=1'b1; s4=1'b1; s5=1'b0; 
	#15 s0=1'b0; s1=1'b1; s2=1'b1; s3=1'b0; s4=1'b1; s5=1'b0; 
	#15 s0=1'b1; s1=1'b0; s2=1'b0; s3=1'b0; s4=1'b1; s5=1'b0; 
	#15 s0=1'b1; s1=1'b0; s2=1'b0; s3=1'b1; s4=1'b1; s5=1'b0; 
	#15 s0=1'b1; s1=1'b0; s2=1'b1; s3=1'b0; s4=1'b1; s5=1'b0;
	#500 $finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_stuckatgates.vcd");
	$dumpvars(0,tb_stuckatgates);
end
//end declaration
endmodule
