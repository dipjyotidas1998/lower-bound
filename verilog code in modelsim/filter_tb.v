`timescale 1ns / 1ps

module tst;

// Inputs
reg clk;
reg rst;
reg [31:0] x;

// Outputs
wire [31:0] dataout;

// Instantiate the Unit Under Test (UUT)
filterfir uut (
.clk(clk), 
.rst(rst), 
.x(x), 
.dataout(dataout)
);
initial clk = 0;
always begin #50 clk=~clk; end 
initial begin
// Initialize Inputs

rst = 0;
x = 0;
#100;

rst = 1;
#100;

rst = 0;
x = 32'd5;
#100;
x = 32'd10;
#100;
x = 32'd12;
#100;
x = 32'd15;
#100;
x = 32'd16;
#100;
x=32'd0;


end

endmodule


