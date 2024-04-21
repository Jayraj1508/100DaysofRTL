`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2024 12:57:45
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

  reg [7:0] data_in;
  wire parity;
  reg clk;

 evenparity_gen dut(data_in, parity);

  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    data_in = 8'b00000000;
    #10;
    data_in = 8'b00000001;
    #10;
    data_in = 8'b00000011;
    #10;
    data_in = 8'b10000000;
    #10;
    data_in = 8'b11011111;
    #10;
    data_in = 8'b01010101;
    #10;
    data_in = 8'b10101010;
    #10;
    $finish;
  end

  always @(posedge clk) begin
    $display("Data: %b, Parity: %b", data_in, parity);
  end
   
endmodule
