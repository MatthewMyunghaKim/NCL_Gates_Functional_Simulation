//////////////////////////////////////////////////////////////////////////////////
// Company: RMIT University
// Engineer: Matthew Myungha Kim
// nearers@gmail.com, s3358231@student.rmit.edu.au
// 
// Create Date:    16:54:00 06/03/2014 
// Design Name:    tb_uncle_gates
// Module Name:    tb_uncle_gates
// Project Name:  Streaming Media on Null Convention Logic
// Description: Testbench for UNCLE NCL libraries
// https://sites.google.com/site/asynctools/
//
// Added NCL gates 
// for Behavioral Verilog, UDP, LUT and Boolean Gates, Schematic
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

//#############################################################	
// Testbench NCL basic gates
//#############################################################

//----------------------------------------------------------- 
//-- tb_th34w32
//----------------------------------------------------------- 
module tb_uncle_gates;
	
	parameter PERIOD = 10; // 100MHz clock

	parameter INPUT_PORTS = 3;
	parameter RESET_PORT = 1; // 0: no reset, 1: has reset
	parameter RESET_SENS = 0; // 0: Active Low, 1: Active High
	// Inputs

	// Outputs
	wire y_ref;
	wire y;
	
	// Internal Signals
	reg clk;
	wire [INPUT_PORTS-1:0] stm_value;
	wire rsb;
	wire gnt;

	reg rst;
	reg req;
	
	reg signal_en;
	integer line_num;
	integer error_cnt;
	
	// for output file
	integer f;
/*
	//----------------------------------------------------
	// CASE 1 ~ 4 Input and No Reset
	//----------------------------------------------------
	// Reference Gate
	thxor0_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2]), 
		.d(stm_value[3])
	);

	// Testing Gate
	thxor0 test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2]), 
		.d(stm_value[3])
	);
*/
/*
	//----------------------------------------------------
	// CASE 2 ~ 4 Input and with Reset
	//----------------------------------------------------
	// Reference Gate
	thxor0n_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2]), 
		.d(stm_value[3]),
		.rsb(rsb)
	);

	// Testing Gate
	thxor0n test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2]), 
		.d(stm_value[3]),
		.rsb(rsb)
	);
*/
/*
	//----------------------------------------------------
	// CASE 3 ~ 2 Input and No Reset
	//----------------------------------------------------
	// Reference Gate
	th22_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1])
	);

	// Testing Gate
	th22 test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1])
	);
*/
/*
	//----------------------------------------------------
	// CASE 4 ~ 2 Input and with Reset
	//----------------------------------------------------
	// Reference Gate
	th22r_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1]),
		.rsb(rsb)
	);

	// Testing Gate
	th22r test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1]),
		.rsb(rsb)
	);
*/
/*
	//----------------------------------------------------
	// CASE 5 ~ 3 Input and No Reset
	//----------------------------------------------------
	// Reference Gate
	th23_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2])
	);

	// Testing Gate
	th23 test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2])
	);
*/

	//----------------------------------------------------
	// CASE 6 ~ 3 Input and with Reset
	//----------------------------------------------------
	// Reference Gate
	th33r_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2]),
		.rsb(rsb)
	);

	// Testing Gate
	th33r test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1]), 
		.c(stm_value[2]),
		.rsb(rsb)
	);

	// Stimulus generation
/*
	signal_gen 
	#(.INPUT_PORTS(INPUT_PORTS),
	.RESET_PORT(RESET_PORT),
	.RESET_SENS(RESET_SENS)
	)
	signal_gen (
		.clk(clk), 
		.rst(rst), 
		.req(req), 
		.stm_value(stm_value), 
		.rsb(rsb),
		.gnt(gnt)
	);
*/
/*
	//----------------------------------------------------
	// CASE 4 ~ 2 Input and with Reset
	//----------------------------------------------------
	// Reference Gate
	th22s_ref ref_gate (
		.y(y_ref), 
		.a(stm_value[0]), 
		.b(stm_value[1]),
		.rsb(rsb)
	);

	// Testing Gate
	th22s test_gate (
		.y(y), 
		.a(stm_value[0]), 
		.b(stm_value[1]),
		.rsb(rsb)
	);
*/
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

		wait(gnt)
		begin		
			$display("<< Finishing the Simulation >>");
			if(error_cnt == 0) begin
				$display("TEST RESULT = PASS");
			end
			else begin
				$display("TEST RESULT = FAIL and ERROR COUNT = %d", error_cnt);
			end
			$stop;
		end
	end
	
	// Signal Enable Generation
	always@(posedge clk)
	begin
		if(rst) begin
			signal_en <= 1'b0;
		end
		else begin
			if(req) begin
				signal_en <= 1'b1;
			end
			else if(gnt) begin
				signal_en <= 1'b0;
			end
		end
	end
	
	always@(posedge clk)
	begin
		if(rst) begin
			f = $fopen("output.txt");
			line_num = 0;
			error_cnt = 0;
		end
		else begin
			if(signal_en) begin
				// File Display
				$fdisplay(f, "Line No = %d, RSB = %b, STM_VALUE = 0b%b, Y_REF = %b, Y = %b, Error Count = %d"
				, line_num, rsb, stm_value, y_ref, y, error_cnt); 
				
				line_num <= line_num + 1;
				
				// Comparint Error Count
				if(y_ref != y) begin
					error_cnt <= error_cnt + 1;
				end
			end
		end
	end
	
endmodule

