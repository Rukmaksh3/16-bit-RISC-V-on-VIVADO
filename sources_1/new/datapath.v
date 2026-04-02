`timescale 1ns / 1ps
//`include "register_file.v"
//`include "alu.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 04:57:36 PM
// Design Name: 
// Module Name: datapath
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


module datapath( 
input clk,
input reset,
input reg_write,
input [4:0]read_reg1,
input [4:0]read_reg2,
input [4:0]write_reg,
input [31:0] write_data);

wire [31:0]read_data1;
wire [31:0]read_data2;
wire [31:0]wd;

register_file regfile_module(
reg_write,
read_reg1,
read_reg2,
write_reg,
write_data
);

alu alu_module(
srcA,
srcB,
Alures,
Aluc);


endmodule
