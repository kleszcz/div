`timescale 1ns / 1ps
module snc #(parameter N = 4) (
	input  [2*N-1:0] num, input [N-1:0] denom,
	input  clk, rst, shft, ld, sub,
	output [N-1:0] quotient, remainder,
	output cmpr
);
	reg [2*N:0] acc; //tak, (2n+1)b, por. s3

	
	assign quotient  = acc[  N-1 : 0];
	assign remainder = acc[2*N-1 : N];
	assign cmpr      = (acc[(2*N):N] >= {1'b0, denom});
	
	always @(posedge clk, posedge rst) begin
		if(rst)
			acc <= 0;
		else if(ld)
			acc <= {1'b0, num};
		else if(shft)
			acc <= acc << 1;
		else if(sub) begin
			//acc <= (acc | 1) - (denom << N); //FIXME: smaller subtractor
			acc[2*N:N] <= acc[2*N:N]-denom;
			acc[0]     <= 1;
		end
	end
endmodule
