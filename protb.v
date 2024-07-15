`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 14:04:56
// Design Name: 
// Module Name: protb
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


module protb();
 reg clk, rst;
    wire [3:0] red, yel, gre;

    // Instantiate the module
    pro1 dut (
        .red(red),
        .yel(yel),
        .gre(gre),
        .clk(clk),
        .rst(rst)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Reset generation
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
    end

    // Stimulus
    initial begin
        #100 $finish;
    end
endmodule
