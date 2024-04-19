`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2024 22:12:13
// Design Name: 
// Module Name: Nbit_paralleladder
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
module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module Nbit_paralleladder(A,B,cin,cout,sum);
input [3:0]A,B;
input cin=0;
output[3:0]sum;
output cout;
 wire [2:0] c;
 full_adder fa_1(A[0],B[0],cin,sum[0],c[0]);
 full_adder fa_2(A[1],B[1],c[0],sum[1],c[1]);
 full_adder fa_3(A[2],B[2],c[1],sum[2],c[2]);
 full_adder fa_4(A[3],B[3],c[2],sum[3],cout);

endmodule
