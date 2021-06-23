`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:31 06/23/2021 
// Design Name: 
// Module Name:    shift_unit 
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
module shift_unit(
			input [3:0] shift_amount, 
			input [15:0] input_data, 
			input LorR, 
			output [15:0] output_data
    );
	 begin
	 assign output_data = (LorR == 0) ? {input_data<<shift_amount} : {input_data>>shift_amount};
	 end
endmodule
