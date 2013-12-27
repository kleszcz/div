`timescale 1ns / 1ps

module ctrl #(parameter N = 4) (
	input  clk, rst, start, cmpr,
	output reg shft, ld, sub, rdy, output wire overflow
);
	function integer bits(input integer n);
		for(bits = 1; 2**bits < n; bits = bits + 1)
			begin end
	endfunction

	reg [1      :0] state;
	reg [1      :0] nx_state;
	reg [bits(N):0] pos;

	localparam RDY   = 2'd0,
	           LOAD  = 2'd1,
	           SHIFT = 2'd2,
	           SUB   = 2'd3;

	always @(posedge clk, posedge rst)
		if(rst) begin
			state <= RDY;
			pos   <= N;
		end else begin
			state <= nx_state;
			if(state == SHIFT)
				pos <= pos - 1'b1;
			else if(state == LOAD)
				pos <= N;
		end

	assign overflow = (pos == N && cmpr);

	always @* begin
		nx_state = state;
		ld       = 1'b0;
		rdy      = 1'b0;
		sub      = 1'b0;
		shft     = 1'b0;

		case(state)
		RDY: begin
			rdy      = 1'b1;
			nx_state = start ? LOAD : RDY;
		end
		LOAD: begin
			ld = 1'b1;
			nx_state = SUB;
		end
		SUB:
			if(pos == N && cmpr) begin
				nx_state = RDY;
				sub      = 0;
			end else begin
				nx_state = SHIFT;
				sub      = cmpr;
			end
		SHIFT: begin
			if(pos) begin
				nx_state = SUB;
				shft     = 1'b1;
			end else
				nx_state = RDY;
		end
		endcase
	end
endmodule
