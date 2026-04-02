`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2026 09:37:22 PM
// Design Name: 
// Module Name: alu
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


module alu(srcA,srcB,Alures,Aluc);
input  [31:0]srcA;
input  [31:0]srcB;
output reg [31:0]Alures;
input [2:0]Aluc;

   always@(srcA,srcB,Aluc)
   begin
    case(Aluc)
    //add 
      3'b000 : assign Alures = srcA + srcB;
      //subtract
      3'b001 : assign Alures = srcA + (~srcB + 1'b1);
      //or
      3'b010 : assign Alures = srcA | srcB;
      //and            
      3'b011 : assign Alures = srcA & srcB;
      //xor            
      3'b100 : assign Alures = srcA ^ srcB;
      //compare signed bits a<b           
      3'b101 : assign Alures = {31'b0, $signed(srcA) < $signed(srcB)};      
      //compare unsigned bits a<b     
      3'b111 : assign Alures = {31'b0, srcA < srcB}; 
      
      default : Alures = 32'b0;
      endcase
      end
                          

 
endmodule
