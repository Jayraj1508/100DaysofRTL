`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 11:56:40
// Design Name: 
// Module Name: logic_gates
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


module logic_gates( 
input a,b,
output and_g,or_g,not_g,xor_g,nor_g,xnor_g,nand_g


    );
    and(and_g,a,b);
    or (or_g, a, b);
    not (not_g, a);
    nand (nand_g, a, b);
    nor (nor_g, a, b);
    xor (xor_g, a, b);
    xnor (xnor_g, a, b);
endmodule
