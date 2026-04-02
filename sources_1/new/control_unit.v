`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2026 08:55:34 PM
// Design Name: 
// Module Name: control_unit
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


module control_unit(reset,op,funct3,funct7,zero,aluc);
input reset;
input [7:0]op;
input [2:0]funct3;
input [6:0]funct7;
input zero;
output reg [2:0]aluc;

always@(reset | op | funct3|funct7 )
  begin 
if(op==7'b0110011) // R TYPE INSTRUCTIONS  
  begin if(funct7 ==7'b0000000)
    begin
     if (funct3 ==3'b000)//add
      begin 
     assign aluc = 3'b000; 
        end 
        else if(funct3==3'b010) // slt
        begin
          assign aluc = 3'b101; 
          end
          else if (funct3==3'b100) // xor
          begin 
           assign aluc =3'b100;
           end
           else if (funct3==3'b110)  // or
             begin  
               assign aluc =3'b010;
               end
               else if (funct3==3'b111) // and
               begin 
                assign aluc =3'b011;
                end
           
        else if (funct7==7'b0100000)
          begin 
            assign aluc = 3'b001; // sub 
            end
    
  end
    end
    end

endmodule
