//////////////////////////////////////////////////////////////////////////////////
// Company: RMIT University
// Engineer: Matthew Myungha Kim
// nearers@gmail.com, s3358231@student.rmit.edu.au
// 
// Create Date:    14:32:00 18/03/2014 
// Design Name:    stimulus_gen
// Module Name:    stimulus_gen
// Project Name:  Streaming Media on Null Convention Logic
// Description: Stimulus signal generation for gates test - for Testbench
// 				Used .txt file read function
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module stimulus_gen(clk, rst, req, stm_value, rsb, gnt);

	parameter INPUT_PORTS = 3;
	parameter RESET_PORT = 1; // 0: no reset, 1: has reset
	parameter RESET_SENS = 0; // 0: Active Low, 1: Active High
	

	input clk;
	input rst;
	input req;
	
	output [INPUT_PORTS-1: 0] stm_value; 
	output rsb;
	output gnt;
	
	reg rsb;
	reg gnt;

	reg [INPUT_PORTS-1:0] data;
	integer fd;
	integer code, dummy;
	reg [(INPUT_PORTS)*8-1:0] str;
	
	assign stm_value = data;

	initial begin
		rsb = 1'b0;
		gnt = 1'b0;
		
		@(posedge clk);
		#100;
		
		@(posedge clk);
		wait (req == 1'b1);
		@(posedge clk);

		//@(posedge clk);
		if(RESET_PORT == 0) begin
		
			// select stimulus input text file
			if(INPUT_PORTS == 1)
				fd = $fopen("ncl_stimul_1input.txt","r"); 
			else if(INPUT_PORTS == 2)
				fd = $fopen("ncl_stimul_2input.txt","r"); 
			else if(INPUT_PORTS == 3)
				fd = $fopen("ncl_stimul_3input.txt","r"); 
			else if(INPUT_PORTS == 4)
				fd = $fopen("ncl_stimul_4input.txt","r"); 
			
			data = {INPUT_PORTS-1{1'b0}};
			code = 1;

			while (code) begin
				code = $fgets(str, fd);
				dummy = $sscanf(str, "%b", data);
				code = $fgets(str, fd); // added because of <CR><LF> of .txt file
				rsb = 1'b0;
				$monitor("data = %b", data);
				@(posedge clk);
			end
		end
		else if(RESET_PORT == 1) begin
		
			// select stimulus input text file
			if(INPUT_PORTS == 1)
				fd = $fopen("ncl_stimul_1input.txt","r"); 
			else if(INPUT_PORTS == 2)
				fd = $fopen("ncl_stimul_2input.txt","r"); 
			else if(INPUT_PORTS == 3)
				fd = $fopen("ncl_stimul_3input.txt","r"); 
			else if(INPUT_PORTS == 4)
				fd = $fopen("ncl_stimul_4input.txt","r"); 
			
			data = {INPUT_PORTS-1{1'b0}};
			code = 1;

			while (code) begin
				code = $fgets(str, fd);
				dummy = $sscanf(str, "%b", data);
				code = $fgets(str, fd); // added because of <CR><LF> of .txt file
				rsb = 1'b0; // Reset generation to 0
				$monitor("data = %b", data);
				@(posedge clk);
			end

			// close the file for next file open
			$fclose(fd); 
			
			
			// select stimulus input text file
			if(INPUT_PORTS == 1)
				fd = $fopen("ncl_stimul_1input.txt","r"); 
			else if(INPUT_PORTS == 2)
				fd = $fopen("ncl_stimul_2input.txt","r"); 
			else if(INPUT_PORTS == 3)
				fd = $fopen("ncl_stimul_3input.txt","r"); 
			else if(INPUT_PORTS == 4)
				fd = $fopen("ncl_stimul_4input.txt","r"); 
			
			data = {INPUT_PORTS-1{1'b0}};
			code = 1;

			while (code) begin
				code = $fgets(str, fd);
				dummy = $sscanf(str, "%b", data);
				code = $fgets(str, fd); // added to remove <CR><LF> of .txt file
				rsb = 1'b1; // Reset generation to 1
				$monitor("data = %b", data);
				@(posedge clk);
			end
			
			$fclose(fd); 
			
		end
		
		@(posedge clk);
		gnt = 1'b1;
		@(posedge clk);
		gnt = 1'b0;
		#100;

	end

endmodule

//////////////////////////////////////////////////////////
// Example
//////////////////////////////////////////////////////////

// 3-input stimulus example

// Null to Data sequence
// 							000
// 							->
// 		001					010						100
//		->					->						->
// 	011		101			011		110				101		110
//  ->		->			->		->				->		->
// 	111		111			111		111				111		111

//	000
//	001
//	011
//	111
//	000
//	001
//	101
//	111
//	000
//	010
//	011
//	111
//	000
//	010
//	110
//	111
//	000
//	100
//	101
//	111
//	000
//	100
//	110
//	111

// Alse we need to check more than two value change cases
//	000
//	011
//	111
//	000
//	110
//	111
//	000
//	101
//	111
//	000
//	111


// Data to Null sequence
// 							111
// 							->
// 		110					101						011
//		->					->						->
// 	100		010			100		001				010		001
//  ->		->			->		->				->		->
// 	000		000			000		000				000		000

//	111
//	110
//	100
//	000
//	111
//	110
//	010
//	000
//	111
//	101
//	100
//	000
//	111
//	101
//	001
//	000
//	111
//	011
//	010
//	000
//	111
//	011
//	001
//	000

// Alse we need to check more than two value change cases
//	111
//	100
//	000
//	111
//	001
//	000
//	111
//	010
//	000
//	111
//	000

// NCL doesn't allow these type of signal changes
//	0000
//	0100
//	0010	-> This is illegal
//	0011
//	1100	-> This is illegal


