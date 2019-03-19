module halfAdder_test();
	reg a_in, b_in;
	wire sum_out, carry_out;
	
	reg [1:0] testvectors [3:0];
	integer i;
	
	halfAdder halfAdder_dut(.a(a_in), .b(b_in), .sum(sum_out), .carry(carry_out));
	
	initial begin
		$readmemb("C:/Users/Erdem/Desktop/all-projects-ws/verilog-quartus-tutorials/halfAdder/halfAdder_testvector.tv",testvectors);
	end
	
	always begin
	for (i=0; i<4; i=i+1) begin
		{a_in, b_in} = testvectors[i];
		#10;
	end		
	end
	
endmodule