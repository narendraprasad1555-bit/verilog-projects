
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
