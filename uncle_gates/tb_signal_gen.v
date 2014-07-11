//////////////////////////////////////////////////////////////////////////////////
// Company: RMIT University
// Engineer: Matthew Myungha Kim
// nearers@gmail.com, s3358231@student.rmit.edu.au
// 
// Create Date:    16:54:00 06/03/2014 
// Design Name:    tb_signal_gen
// Module Name:    tb_signal_gen
// Project Name:  Streaming Media on Null Convention Logic
// Description: Testbenc for "Testbench signal generation" for gates test
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_signal_gen;
	// Praramers
	parameter INPUT_PORTS = 3;
	
	// Inputs
	reg clk;
	reg rst;
	reg req;

	// Outputs
	wire [INPUT_PORTS-1:0] stm_value;
	wire gnt;

	// Instantiate the Unit Under Test (UUT)
	signal_gen 
	#(.INPUT_PORTS(INPUT_PORTS))
	uut (
		.clk(clk), 
		.rst(rst), 
		.req(req), 
		.stm_value(stm_value), 
		.gnt(gnt)
	);
	
   parameter PERIOD = 10;

   always begin
      clk = 1'b0;
      #(PERIOD/2) 
		clk = 1'b1;
      #(PERIOD/2);
   end 

	initial begin
		// Initialize Inputs
		rst = 1;
		req = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		rst = 0;
		req = 0;		
		// Add stimulus here
		#100;
		req = 1;
		$display($time, " << Starting the Simulation >>");
		
		#100;
		req = 0;	
		
		$monitor(" %0d %b", $time, gnt);
		
		wait(gnt)
		begin		
			$display($time, " << Finishing the Simulation >>");
			$stop;
		end
	end
      
endmodule
