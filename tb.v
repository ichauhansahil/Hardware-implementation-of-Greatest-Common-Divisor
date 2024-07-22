`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 09:39:11
// Design Name: 
// Module Name: tb
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


module tb;
    reg clk;
    reg reset;
   
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] gcd;
   
   
gcd_calculator dut(clk,reset,x,y,gcd);

initial begin
clk=0;
end

always #5 clk=~clk;

initial begin
reset=1;
#10
x=40;
y=20;
reset=0;

end

initial begin
#40 x=10;
y=60;


end
  

endmodule
