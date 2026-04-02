`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 04:41:21 PM
// Design Name: 
// Module Name: data_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_memory(clk,alures,memwrite);
input clk;
input [31:0]alures;
input memwrite;

reg [31:0] data_mem;
always@(clk)
   begin 
    if (~alures )
      begin 
        assign data_mem= alures;
        end
        else begin 
         assign data_mem = 32'b0;
         end
        
        end
        

endmodule
