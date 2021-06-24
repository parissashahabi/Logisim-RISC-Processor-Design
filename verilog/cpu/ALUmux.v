`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:49 06/23/2021 
// Design Name: 
// Module Name:    ALUmux 
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
module ALUmux(in0, in1, in2, in3, in4, operation, out);
//Declare ports
input in0, in1, in2, in3, in4;
input[2:0] operation;
output reg out;


	//Whenever an input or select changes,
	//Choose the value of the appropriate input
	//and output it.
always @ (in0 or in1 or in2 or in3 or in4 or operation)
begin
   if( operation == 0)
      out = in0;

   if( operation == 1)
      out = in1;

   if( operation == 2)
      out = in2;

   if( operation == 3)
      out = in3;
		
	if( operation == 4)
      out = in4;

end

endmodule