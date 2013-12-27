`timescale 1ns / 1ps
module div_tb;
	reg [7:0] num;
	reg [3:0] denom;
	reg  clk, rst, start;

	reg [11:0] wszyzgo; //WSZYZGO!!!!!11!!1

	wire [3:0] quotient;
	wire [3:0] remainder;

	div uut (
		.num(num),
		.denom(denom),
		.clk(clk),
		.rst(rst),
		.start(start),
		.quotient(quotient),
		.remainder(remainder),
		.rdy(rdy), 
		.overflow(overflow)
	);

	always #1 clk = !clk;

	integer out;
	assign rl_ovrflw = (!denom || ((num/denom) > 4'b1111));
	initial begin
		// init inputs
		num = 0;
		clk = 0;
		rst = 0;
		start = 0;
		denom = 0;
		#100; // 100ns for global reset to finish

		rst    = 1; #4 rst = 0;

		out = $fopen("test.dat", "w");
		wszyzgo = 0;
		repeat(1<<12) begin
			num   = wszyzgo[11:4];
			denom = wszyzgo[ 3:0];
			start = 1; #2 start = 0;
			#30
			
			$fdisplay(out, "0x%2h 0x%1h 0x%1h 0x%1h %b %b %b %b",
				num, denom, quotient, remainder, overflow,
				rl_ovrflw || (quotient == (num/denom)), rl_ovrflw || (remainder == (num%denom)), rl_ovrflw == overflow
			);
			wszyzgo = wszyzgo + 1;
		end
		$fclose(out);

		$finish;
	end
endmodule
