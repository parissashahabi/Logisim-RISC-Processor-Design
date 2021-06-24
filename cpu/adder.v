`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:18 06/23/2021 
// Design Name: 
// Module Name:    adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder (A, B, carryin, sum, carryOut); // 1-bit full adder
	 input A, B, carryin;
	 output reg sum, carryOut;
	 
	 always@ (A or B ot carryin) begin
		{carryOut, sum} = A + B + carryin;
	end
	
endmodule
