`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:42 06/23/2021 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(input [3:0] operation,
                    output shift, LorR, carryin, Bbar, store, load, jump, branch, memread, ALUsrc, regdst, regwrite,
                    output [2:0] ALUop				  
    );
	 always @(*)  
 begin 
 case(operation)
 4'b0000: begin //add
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b100;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0001: begin //sub
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b100;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b0;
 carryin = 1'b1;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0010: begin //and
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0011: begin //or
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b001;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0100: begin //nor
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b010;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0101: begin //lw
 regwrite = 1'b1;
 regdst = 1'b1;
 ALUsrc = 1'b1;
 memread = 1'b1;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b1;
 store = 1'b0;
 Bbar = 1'b0;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0110: begin //sw
 regwrite = 1'b0;
 regdst = 1'b1;
 ALUsrc = 1'b1;
 memread = 1'b1;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b1;
 Bbar = 1'b0;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0111: begin //beq
 regwrite = 1'b0;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b000;
 branch = 1'b1;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b0;
 carryin = 1'b1;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0011: begin //addi
 regwrite = 1'b1;
 regdst = 1'b1;
 ALUsrc = 1'b1;
 memread = 1'b0;
 ALUop = 3'b100;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b1010: begin //andi
 regwrite = 1'b1;
 regdst = 1'b1;
 ALUsrc = 1'b1;
 memread = 1'b0;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b1011: begin //ori
 regwrite = 1'b1;
 regdst = 1'b1;
 ALUsrc = 1'b1;
 memread = 1'b0;
 ALUop = 3'b001;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b1100: begin //sll
 regwrite = 1'b1;
 regdst = 1'b1;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b0;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b1;
 end
 4'b11011: begin //srl
 regwrite = 1'b1;
 regdst = 1'b1;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b0;
 carryin = 1'b0;
 LorR = 1'b1;
 shift = 1'b1;
 end
 4'b0011: begin //xor
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b011;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 4'b0011: begin //jump
 regwrite = 1'b0;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b000;
 branch = 1'b0;
 jump = 1'b1;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b0;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 default: begin
 regwrite = 1'b1;
 regdst = 1'b0;
 ALUsrc = 1'b0;
 memread = 1'b0;
 ALUop = 3'b100;
 branch = 1'b0;
 jump = 1'b0;
 load = 1'b0;
 store = 1'b0;
 Bbar = 1'b1;
 carryin = 1'b0;
 LorR = 1'b0;
 shift = 1'b0;
 end
 endcase
 end
endmodule
