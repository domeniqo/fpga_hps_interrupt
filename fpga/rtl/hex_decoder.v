module hex_decoder(input clk, input [3:0] binary_num, output reg [6:0] hex_num);
always @(posedge clk)
	begin
		case (binary_num)
			4'd0:
				  hex_num <= 7'b1000000;			
			4'd1:
				  hex_num <= 7'b1111001;
			4'd2:
				  hex_num <= 7'b0100100;
			4'd3:
				  hex_num <= 7'b0110000;
			4'd4:
				  hex_num <= 7'b0011001;
			4'd5:
				  hex_num <= 7'b0010010;
			4'd6:
				  hex_num <= 7'b0000010;
			4'd7:
				  hex_num <= 7'b1111000;
			4'd8:
				  hex_num <= 7'b0000000;
			4'd9:
				  hex_num <= 7'b0010000;
			4'd10:
				  hex_num <= 7'b1000000;
			4'd11:
				  hex_num <= 7'b1111001;
			4'd12:
				  hex_num <= 7'b0100100;
			4'd13:
				  hex_num <= 7'b0110000;
			4'd14:
				  hex_num <= 7'b0011001;
			4'd15:
				  hex_num <= 7'b0010010;
		endcase
	end
endmodule
