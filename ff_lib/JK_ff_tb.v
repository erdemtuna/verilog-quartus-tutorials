module JK_ff_tb();

	reg J_in, K_in, CLK, rst_in;
	wire Q_out;
	
	reg [2:0] testvectors [4:0];
	integer i;

	JK_ff JK_ff_dut(	J_in,
							K_in,
							CLK,
							rst_in,
							Q_out);
							
	initial begin
		$readmemb("C:/Users/Erdem/Desktop/all-projects-ws/verilog-quartus-tutorials/ff_lib/JK_ff_testvectors.txt", testvectors);
		i = 0;
	end
	
	always begin
		CLK = 1'b0;
		#5;
		CLK = 1'b1;
		#5;
	end

	always @(posedge CLK) begin
		{J_in, K_in, rst_in} = testvectors[i];
		i = i+1;
	end

endmodule