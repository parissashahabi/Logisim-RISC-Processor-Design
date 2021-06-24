`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:24 06/23/2021 
// Design Name: 
// Module Name:    register_file 
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
 module register_file  
 (  
      input clk,  
      input rst,  
      input reg_write_en,  
      input [3:0] reg_write_dest,  
      input [15:0] reg_write_data,  
      input [3:0] reg_read_addr_1,  
      output [15:0] reg_read_data_1,  
      input [3:0] reg_read_addr_2,  
      output [15:0] reg_read_data_2  
 );  
      reg [15:0] reg_array [15:0];   
      always @ (posedge clk or posedge rst) begin  
           if(rst) begin  
                reg_array[0] <= 16'b0;  
                reg_array[1] <= 16'b0;  
                reg_array[2] <= 16'b0;  
                reg_array[3] <= 16'b0;  
                reg_array[4] <= 16'b0;  
                reg_array[5] <= 16'b0;  
                reg_array[6] <= 16'b0;  
                reg_array[7] <= 16'b0;  
                reg_array[8] <= 16'b0;  
                reg_array[9] <= 16'b0;  
                reg_array[10] <= 16'b0;  
                reg_array[11] <= 16'b0;  
                reg_array[12] <= 16'b0;  
                reg_array[13] <= 16'b0;  
                reg_array[14] <= 16'b0;  
                reg_array[15] <= 16'b0;  					 
           end  
           else begin  
                if(reg_write_en) begin  
                     reg_array[reg_write_dest] <= reg_write_data;  
                end  
           end  
      end  
      assign reg_read_data_1 = ( reg_read_addr_1 == 0)? 16'b0 : reg_array[reg_read_addr_1];  
      assign reg_read_data_2 = ( reg_read_addr_2 == 0)? 16'b0 : reg_array[reg_read_addr_2];  
 endmodule   