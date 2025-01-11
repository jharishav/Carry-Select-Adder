`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2025 12:54:57
// Design Name: 
// Module Name: carry_select_adder_32_bit
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


module carry_select_adder_32_bit(a,b,cin,sum,c_out);

input [31:0] a,b;
input cin;
output [31:0] sum;
output c_out;

wire [1:0] carry_propagate;

carry_select_adder_23_bit add0(a[22:0],b[22:0],cin,sum[22:0],carry_propagate[0]);//Instaniating carry_select_adder_23_bit module
carry_select_adder add1(a[30:23],b[30:23],carry_propagate[0],sum[30:23],carry_propagate[1]);// Instaniating carry_select_adder module
carry_select_adder_1bit add2(a[31],b[31],carry_propagate[1],sum[31],c_out); //Instaniating carry_select_adder_1bit module

endmodule
