`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:06 06/23/2021 
// Design Name: 
// Module Name:    D_flipflop 
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
module D_FF (q, d, rst_n, clk,init_value);  
 output q;  
 input d, rst_n, clk,init_value;  
 reg q; 
 always @(posedge clk or negedge rst_n)  
 if (~rst_n)  
 q <= init_value;     
 else  
 q <= d;  

 endmodule