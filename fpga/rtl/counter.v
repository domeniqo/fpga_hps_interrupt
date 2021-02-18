module counter (
	input clk,
	input rst,
	input [9:0] value,
	output reg done);

	reg [9:0] cntr;

	always@(posedge clk)
	begin
		if(!rst || !cntr) cntr <= value;
		else cntr <= cntr - 1;
	end

 	always@(posedge clk)
	begin
		if(cntr == 1) done = 1;
		else done = 0;
	end
	/*
	reg [26:0] current_value;
	reg finished;

	//done as a output (not register)
	assign done = finished;
		
	always @(posedge clk) begin
		if (rst) begin
			current_value[26:17] <= value;
			finished <= 1'b0;
		end
		else begin
			if (current_value > 0) begin
				current_value <= current_value - 1;
				if (finished == 1'b1) begin
					finished <= 1'b0;
				end
			end
			else begin
				finished <= 1'b1;
				current_value[26:17] <= value;
			end
		end
	end
	*/
	
endmodule
