//////////////////////////////////////////////////////////////////////////////////
// Company: RMIT University
// Engineer: Matthew Myungha Kim
// nearers@gmail.com, s3358231@student.rmit.edu.au
// 
// Create Date:    18:58:00 25/02/2014 
// Design Name:    uncle_config
// Module Name:    uncle_config
// Project Name:  Streaming Media on Null Convention Logic
// Description: NCL libraries for UNCLE
// https://sites.google.com/site/asynctools/
// This is the configuration file for UNCLE gate library file(uncle_gate.v)
// 
//////////////////////////////////////////////////////////////////////////////////

//*********************************************************
// Gate Design Model Selection - SCOTT_HDL, KARL_SCH
//*********************************************************
//`define GATE_DESIGN_is_BEHAVE_HDL 		// 1> Basic Behavioral Expression
//`define GATE_DESIGN_is_UDP_HDL 		// 2> User Defined Primitives
`define GATE_DESIGN_is_LUT_HDL 		// 3> Look-Up Table Initialization
//`define GATE_DESIGN_is_BOOLEAN_HDL 	// 4> Boolean Gates module call
//`define GATE_DESIGN_is_XILINX_SCH		// 5> Schematic drawing for Xilinx devices
 
//*********************************************************
// Device Vendor Selection - XILINX, ALTERA
//*********************************************************
`define DEVICE_VENDOR_is_XILINX
//`define DEVICE_VENDOR_is_ALTERA
//`define DEVICE_VENDOR_is_ACTEL