`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:00 06/23/2021 
// Design Name: 
// Module Name:    mux_16 
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
module mux_16(A, B, sel, out); // a 2 to 1 16-bit multiplexer
	input [15:0] A, B;
	input sel;
	output reg [15:0] out;
	
	always @ (A or B or sel)
	begin
	out = (sel) ?B : A;
	end
endmodule
