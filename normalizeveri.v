// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Thu Mar 10 13:04:54 2016"

module normalizeveri(
	clk,
	theta,
	result
	//test
);


input wire	clk;
input wire	[31:0] theta;
output wire	[31:0] result;
//output wire	[31:0] test;

reg	[31:0] SYNTHESIZED_WIRE_4 = 32'b01000000110010010000111111011011;
//wire	[31:0] SYNTHESIZED_WIRE_1;
//wire	[31:0] SYNTHESIZED_WIRE_3;

altfp_div0	b2v_inst0(
	.clock(clk),
	.dataa(theta),
	.datab(SYNTHESIZED_WIRE_4),
	.result(result));

/*
floorf	b2v_inst1(
	
	.result(SYNTHESIZED_WIRE_1));


altfp_mult0	b2v_inst2(
	.clock(clk),
	.dataa(SYNTHESIZED_WIRE_1),
	.datab(SYNTHESIZED_WIRE_4),
	.result(SYNTHESIZED_WIRE_3));


altfp_add_sub1	b2v_inst3(
	.clock(clk),
	.dataa(theta),
	.datab(SYNTHESIZED_WIRE_3),
	.result(result));

*/
endmodule
