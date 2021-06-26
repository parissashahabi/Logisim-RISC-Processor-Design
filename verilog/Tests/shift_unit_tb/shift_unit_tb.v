`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:20:15 06/26/2021
// Design Name:   shift_unit
// Module Name:   D:/cpu/shift_unit_tb.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_unit_tb;

	// Inputs
	reg [3:0] shift_amount;
	reg [15:0] input_data;
	reg LorR;

	// Outputs
	wire [15:0] output_data;

	// Instantiate the Unit Under Test (UUT)
	shift_unit uut (
		.shift_amount(shift_amount), 
		.input_data(input_data), 
		.LorR(LorR), 
		.output_data(output_data)
	);

	initial begin
		// Initialize Inputs
		shift_amount = 0;
		input_data = 0;
		LorR = 0;

		// Wait 100 ns for global reset to finish
		#100;
		shift_amount = 2;
		input_data = 4;
		LorR = 0;

		// Wait 100 ns for global reset to finish
		#100;
      shift_amount = 5;
		input_data = 5;
		LorR = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

