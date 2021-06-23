`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:04 06/23/2021 
// Design Name: 
// Module Name:    adder_8 
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
module adder_8 (A, B, sum);
	 input [7:0] A, B;
	 output [7:0] sum;
	
	assign sum = A + B;
	
endmodule