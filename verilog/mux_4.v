`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:33 06/23/2021 
// Design Name: 
// Module Name:    mux_4 
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
module mux_4(A, B, sel, out); // a 2 to 1 4-bit multiplexer
	input [3:0] A, B;
	input sel;
	output reg [3:0] out;
	
	always @ (A or B or sel)
	begin
	out = (sel) ?B : A;
	end
endmodule