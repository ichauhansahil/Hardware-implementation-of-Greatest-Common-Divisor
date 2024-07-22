`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2024 17:27:12
// Design Name: 
// Module Name: max
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


module max 
# (parameter N=4)
(  input [N:0]a,
    input [N:0]b,
    input clk,
    output reg [N:0]c);

always @ (posedge clk)    
if (a>b)
    c<=a; 
else 
    c<=b;
    
   
endmodule
