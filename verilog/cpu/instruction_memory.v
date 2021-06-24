`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:33 06/23/2021 
// Design Name: 
// Module Name:    instruction_memory 
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
module instr_mem   
 (  
      input [7:0] pc,  
      output wire [15:0] instruction  
 );  
      wire [7 : 0] rom_addr = pc[7 : 0];  
      /* 
			addi $t0,$z0,1
			addi $t1,$z0,1
			addi $t2,$z0,5
			addi $s0,$z0,1
			beq $s0,$t2,5
			addi $s0,$s0,1
			add $t3,$z0,$t1
			add $t1,$t1,$t0
			add $t0,$z0,$t3
			j 4
			sw $t1,$s0,2  
 */  
      reg [15:0] rom[0:255];  
      initial  
      begin  
                rom[0] = 16'b1001000000010001;  
                rom[1] = 16'b1001000000100001;  
                rom[2] = 16'b1001000000110101;  
                rom[3] = 16'b1001000001010001;  
                rom[4] = 16'b0111001101010101;  
                rom[5] = 16'b1001010101010001; 
                rom[6] = 16'b0000001000000100;  
                rom[7] = 16'b0000000100100010;  
                rom[8] = 16'b0000010000000001;  
                rom[9] = 16'b1111000000000100;  
                rom[10] = 16'b0110010100100010;  
                rom[11] = 16'b0110010100100010;  
                rom[12] = 16'b0000000000000000;  
                rom[13] = 16'b0000000000000000;  
                rom[14] = 16'b0000000000000000;  
                rom[15] = 16'b0000000000000000;  
      end  
        always@(pc)
			begin
				instruction = rom[pc[7:0]];
			end
 endmodule