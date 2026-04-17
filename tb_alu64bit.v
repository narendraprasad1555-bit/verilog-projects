
// test bench module declaration
module tb_alu64bit;
//data declaration
reg [63:0] a,b;
reg [3:0] alucontrol;
wire  [63:0]np;
//instantiation
alu64bit o1(.np(np),.alucontrol(alucontrol),.a(a),.b(b));
//timing declaration
initial
begin
	a=64'b1111; b=64'b1010; 
	alucontrol=4'b0000;
        #10 alucontrol=4'b0001;
	#10 alucontrol=4'b0010;
	#10 alucontrol=4'b0011;
	#10 alucontrol=4'b0100;
	#10 alucontrol=4'b0101;
	#10 alucontrol=4'b0110;
	#10 alucontrol=4'b0111;
	#10 alucontrol=4'b1000;
	#10 alucontrol=4'b1001;
	#10 alucontrol=4'b1010;
	#10 alucontrol=4'b1011;
	#10 alucontrol=4'b1100;
	#10 alucontrol=4'b1101;
	#10 alucontrol=4'b1110;
	#10 alucontrol=4'b1111;
	#100 $finish;
end
//wave form declaration
initial
begin
	$dumpfile("tb_alu64bit.vcd");
	$dumpvars(0,tb_alu64bit);
end
//end module declaration
endmodule
