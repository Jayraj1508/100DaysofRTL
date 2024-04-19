`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 19:27:36
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor(a,b,diff,brw );
input a,b;
output diff,brw;

assign diff=a^b; 
assign brw=~a&b;
endmodule
