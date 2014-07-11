//////////////////////////////////////////////////////////////////////////////////
// Company: RMIT University
// Engineer: Matthew Myungha Kim
// nearers@gmail.com, s3358231@student.rmit.edu.au
// 
// Create Date:    17:37:00 18/03/2014 
// Design Name:    stimulus_gen
// Module Name:    stimulus_gen
// Project Name:  Streaming Media on Null Convention Logic
// Description: Testbench for UNCLE NCL libraries
// https://sites.google.com/site/asynctools/
//
// Stimulus Signal Generation - Testbench
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

//#############################################################	
// Testbench NCL basic gates
//#############################################################

//----------------------------------------------------------- 
//-- tb_th34w32
//----------------------------------------------------------- 
module tb_stimulus_gen;
	
	parameter PERIOD = 10; // 100MHz clock

	parameter INPUT_PORTS = 3;
	parameter RESET_PORT = 1; // 0: no reset, 1: has reset
	parameter RESET_SENS = 0; // 0: Active Low, 1: Active High
	// Inputs

	// Internal Signals
	reg clk;
	wire [INPUT_PORTS-1:0] stm_value;
	wire rsb;
	wire gnt;

	reg rst;
	reg req;

	// Stimulus generation
	stimulus_gen 
	#(.INPUT_PORTS(INPUT_PORTS),
	.RESET_PORT(RESET_PORT),
	.RESET_SENS(RESET_SENS)
	)
	stimulus_gen (
		.clk(clk), 
		.rst(rst), 
		.req(req), 
		.stm_value(stm_value), 
		.rsb(rsb),
		.gnt(gnt)
	);
	
	// Clock for signal generation
	always begin
		clk = 1'b0;
		#(PERIOD/2) clk = 1'b1;
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
		$display("<< Starting the Simulation >>");
		
		#100;
		req = 0;	
		
		//$monitor(" %0d %b", $time, gnt);

	end

endmodule

