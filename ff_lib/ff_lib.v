module ff_lib(input wire in, output reg out);
	always @(in) begin
		out <= in;
	end
endmodule

module JK_ff (	input wire J,
					input wire K,
					input wire clk,
					input wire rst,
					output reg Q);
					
	localparam 	HOLD = 2'b00,
					SET = 2'b10,
					RESET = 2'b01,
					TOGGLE = 2'b11;
	
	always @(posedge clk) begin
		if(rst) begin
			Q <= 1'b0;
		end
		else begin
			case({J,K})
				HOLD : begin
					Q <= Q;
				end
				RESET : begin
					Q <= 1'b0;
				end
				SET : begin
					Q <= 1'b1;
				end
				TOGGLE : begin
					Q <= ~Q;
				end
			endcase
		end
	end	
endmodule

module SR_ff (	input wire S,
					input wire R,
					input wire clk,
					input wire rst,
					output reg Q);
					
	localparam 	HOLD = 2'b00,
					SET = 2'b10,
					RESET = 2'b01;
	
	always @(posedge clk) begin
		if(rst) begin
			Q <= 1'b0;
		end
		else begin
			case({S,R})
				HOLD : begin
					Q <= Q;
				end
				RESET : begin
					Q <= 1'b0;
				end
				SET : begin
					Q <= 1'b1;
				end
				default: begin
					Q <= 1'bx;
				end
			endcase
		end
	end	
endmodule

module D_ff (	input wire D,
					input clk,
					input rst,
					output reg Q);
					
	always @(posedge clk) begin
		if(rst) begin
			Q <= 1'b0;
		end
		else begin
			Q <= D;
		end
	end
endmodule

module T_ff (	input wire T,
					input wire clk,
					input wire rst,
					output reg Q);
					
	always @(posedge clk) begin
		if(rst) begin
			Q <= 0;
		end
		else begin
			case(T)
				1'b0: begin
					Q <= Q;
				end
				1'b1: begin
					Q <= ~Q;
				end
			endcase
		end
	end
endmodule








