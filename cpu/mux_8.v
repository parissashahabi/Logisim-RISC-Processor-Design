`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:57 06/23/2021 
// Design Name: 
// Module Name:    mux_8 
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
module mux_8(A, B, sel, out); // a 2 to 1 8-bit multiplexer
	input [7:0] A, B;
	input sel;
	output reg [7:0] out;
	
	always @ (A or B or sel)
	begin
	out = (sel) ?B : A;
	end
endmodule

