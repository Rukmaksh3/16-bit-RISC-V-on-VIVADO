`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2026 10:51:24 AM
// Design Name: 
// Module Name: program_counter
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


module program_counter(clk,reset,instr);
input clk;
input reset;
output [31:0]instr;

reg[31:0]pc = 32'b0;

always@(posedge clk , posedge reset)
 begin 
   if(reset==1)
    begin 
      pc <= 0;
      end
       else 
         pc <= pc + 4;
         end


endmodule
