`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:13 06/23/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU( input [15:0] A,
            input [15:0] B,
				input [2:0] operation,
				input Binvert,
				input carryin,
				output carryOut,
				output overFlow,
				output reg [15:0] result,
				output zero 
    );
	 always @(*)
 begin
 case(operation)
 3'b100: begin if(Binvert == 1 && carryin == 0) result = A + B;
else if(Binvert == 0 && carryin == 1)
result = A - B;
end //add - sub
 3'b000: begin if(Binvert == 1 && carryin == 0) result = A & B; end //and 
 3'b001: begin if(Binvert == 1 && carryin == 0) result = A | B; end //or
 3'b010: begin if(Binvert == 1 && carryin == 0) result = A ~| B; //nor
 3'b011: begin if(Binvert == 1 && carryin == 0) result = A ^ B; //xor
 default: result = A + B;
 endcase
 end
 assign zero = (result == 16'd0) ? 1'b1: 1'b0; 
 assign carryOut = result[15:14];
 assign overFlow = result[15:14] ^ result[14:13];
endmodule
