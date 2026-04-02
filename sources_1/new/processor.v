`timescale 1ns / 1ps
//`include "datapath.v"
//`include "control_unit.v"
//`include "program_counter.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 04:54:14 PM
// Design Name: 
// Module Name: processor
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


module processor(input clk,
input reset
   );
   
   wire[31:0]instr;
   wire [3:0]Aluc;
   
   datapath Datapath_module( clk,
 reset,
 reg_write,
 instr[19:15],
 instr[24:20],
 instr[11:7],
 write_data);
 
 program_counter pc_module(reset,clk,instr);
 
 
 control_unit control_module(reset,instr[6:0],instr[14:12],instr[31:25],zero,aluc);
   
endmodule
