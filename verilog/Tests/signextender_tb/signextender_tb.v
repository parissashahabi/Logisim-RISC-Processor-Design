`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:27:51 06/26/2021
// Design Name:   signextender
// Module Name:   D:/cpu/signextender_tb.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signextender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module signextender_tb;

	// Inputs
	reg [3:0] unextended;
	reg clk;

	// Outputs
	wire [15:0] extended;

	// Instantiate the Unit Under Test (UUT)
	signextender uut (
		.unextended(unextended), 
		.clk(clk), 
		.extended(extended)
	);

	initial begin
		// Initialize Inputs
		unextended = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        unextended = 8;
		clk = 1;

		// Add stimulus here

	end
      
endmodule

