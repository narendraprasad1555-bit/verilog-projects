
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
