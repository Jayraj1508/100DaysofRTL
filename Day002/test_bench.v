`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 11:43:03
// Design Name: 
// Module Name: test_bench
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


module test_bench();
reg a,b;
wire and_g,
     or_g,
     not_g,
     nand_g,
     nor_g,
     xor_g,
    xnor_g;
    logic_gates uut(a,b,and_g,
     or_g,
     not_g,
     nand_g,
     nor_g,
     xor_g,
    xnor_g);
    initial
    begin
     #10 a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
endmodule
