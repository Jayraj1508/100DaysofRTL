`timescale 1ns / 1ps

module test_bench;
reg a, b;
  wire sum, carry;
  reg clk;

  half_adder dut(a, b,sum, carry);

  always #5 clk = ~clk;

  initial begin
    clk = 0;
    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;
    $finish;
  end
  
  always @(posedge clk) begin
    $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);
  end
endmodule