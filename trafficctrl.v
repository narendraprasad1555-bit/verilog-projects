
//module declaration
module tc(hwy,cntry,x,clk,reset);
//port declaration
input x,clk,reset;
output reg [1:0]hwy,cntry;
parameter red=2'b00;
parameter yellow=2'b01;
parameter green=2'b11;
//self defination
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
reg [2:0]state;
reg [2:0]nextstate;
//instantiation
always@(posedge clk)
	if (reset)
		state<=s0;
	else
		state<=nextstate;

always@(state)
begin
	hwy=green;
	cntry=red;
	case(state)
		s0: ;
		s1:hwy=yellow;
		s2:hwy=red;
		s3:begin
			hwy=red;
			cntry=green;
		end
		s1:hwy=yellow;
		s2:hwy=red;
		s3:begin
			hwy=red;
			cntry=yellow;
		end
		s4:begin
			hwy=red;
			cntry=yellow;
		end
	endcase
end

always@(state or x)
begin
        case (state)
	       s0:if (x)
	       nextstate=s1;
       else
	       nextstate=s0;
               s1:begin
		       repeat (3) @(posedge clk)
		       nextstate=s2;
	       end	
	       s2:begin
		       repeat (2) @(posedge clk)
		       nextstate=s3;
	       end
	       s3:if(x)
	       nextstate=s3;
       else

	       nextstate=s4;
               s4:begin
		       repeat (3) @(posedge clk)
		       nextstate=s0;
	       end
       endcase
   end

always@(state or x)
begin
	case (state)
		s0:if (x)
		nextstate=s1;
	else
		nextstate=s0;
	        s1:begin
			repeat (3) @(posedge clk)
			nextstate=s2;
		end
		s2:begin
			repeat (2) @(posedge clk)
			nextstate=s3;
		end
		s3:if(x)
		nextstate=s3;
	else
		nextstate=s4;
	        s4:begin
			repeat (3) @(posedge clk)
			nextstate=s0;
		end
		default:nextstate=s0;
	endcase
end
endmodule

