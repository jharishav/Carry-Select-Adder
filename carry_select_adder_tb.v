`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 10:39:03
// Design Name: 
// Module Name: carry_select_adder_tb
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

//Stimulus module for carry_select_adder module
module carry_select_adder_tb();
reg [7:0] A, B;
reg C_IN;
wire [7:0] SUM;
wire C_OUT;

carry_select_adder uut(A,B,C_IN,SUM,C_OUT);

initial
begin
A = 8'd15; B = 8'd15; C_IN = 1'b0;
#20 A = 8'd6; B = 8'd1; C_IN = 1'b0;
#20 A = 8'd0; B = 8'd0; C_IN = 1'b0;
#20 A = 8'd255; B = 8'd255; C_IN = 1'b0;
#20 A = 8'd255; B = 8'd255; C_IN = 1'b1;
#20 $finish;
end
endmodule
