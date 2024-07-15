`timescale 1ns / 1ps
module pro11tb();
reg clk,rst;
wire [3:0] red,gre,yel;
pro1 u1(red,yel,gre,clk,rst);
initial
begin
rst=1;
clk=0;
#200
rst=0;
forever
#10 clk=~clk;
end
endmodule
