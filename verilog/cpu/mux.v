`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:39 06/23/2021 
// Design Name: 
// Module Name:    mux 
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
module mux(A, B, sel, out); // a 2 to 1 1-bit multiplexer
	input A, B;
	input sel;
	output reg out;
	
	always @ (A or B or sel)
	begin
	out = (sel) ?B : A;
	end
endmodule