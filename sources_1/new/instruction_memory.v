`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2026 12:00:20 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(input wire reset ,input wire [31:0]A , output [31:0]read_data

    );
    //memory size
    reg [31:0] mem[255:0];
    
    assign read_data = (~reset) ? {32{1'b0}} : mem[A[31:2]];
    
endmodule
