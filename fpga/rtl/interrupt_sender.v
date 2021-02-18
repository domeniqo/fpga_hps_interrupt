module interrupt_sender(
	input reset,
	input irq_req, 
	output avl_irq_out, 
	input clk, 
	input  avl_read,
	output [7:0] avl_read_data);

reg irq;

assign avl_irq_out = irq; 

always @(posedge clk) begin
	if (reset) begin
		irq <= 1'b0;
	end
	else begin
		if (irq_req) begin
			irq <= 1'b1;
		end
		else if (avl_read) begin
			irq <= 1'b0;
		end
	end
end

endmodule
