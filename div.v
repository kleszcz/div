`timescale 1ns / 1ps
module div #(parameter N = 4)(
	input  [2*N-1:0] num, input [N-1:0] denom,
	input  clk, rst, start,
	output [N-1:0] quotient, remainder,
	output rdy, overflow
);
	ctrl #N c(
		.clk(clk), .rst(rst), .start(start), .cmpr(cmpr),
		.shft(shft), .ld(ld), .sub(sub), .rdy(rdy), .overflow(overflow)
	);
	snc  #N s(
		.num(num), .denom(denom), .clk(clk), .rst(rst), .shft(shft), .ld(ld), .sub(sub),
		.quotient(quotient), .remainder(remainder), .cmpr(cmpr)
	);
endmodule
