`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 11:26:41
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
wire out;
nand_gate dut(a,b,out);
initial a=1'b0;
initial b=1'b0;
initial forever #50 a =~a;
initial forever #50 b =~b;
initial#600 $finish;

endmodule
