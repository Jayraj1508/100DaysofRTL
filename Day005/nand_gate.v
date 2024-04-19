`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 10:52:48
// Design Name: 
// Module Name: nand_gate
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


module nand_gate(a,b,out);
input a,b;
output out ;
supply0 gnd;
supply1 vdd;
wire f;
nmos n1(f,gnd,b); 
nmos n2(out,f,a);
pmos p1(out,vdd,a); 
pmos p2(out,vdd,b);

endmodule
