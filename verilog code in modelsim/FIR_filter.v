module filterfir(clk,rst,x,dataout);
input [31:0]x;
input clk,rst;
output [31:0]dataout;
wire [31:0]d1,d2,d3;
wire [31:0]m1,m2,m3,m4,m5;
wire [31:0]d11,d12,d13,d14;
parameter h0= 3'b101;//5 
parameter h1=3'b100;//4
parameter h2=3'b011;//3
parameter h3=3'b010;//2
parameter h4=3'b001;//1
assign m1=  (x<<2)+x;//       x*h0;
dff u2(clk,rst,x,d11);
assign m2=(d11<<2);//d11*h1;
assign d1=m1+m2;
dff u4(clk,rst,d11,d12);
assign m3=(d12<<2)-d12 ;//d12*h2;
assign d2=d1+m3;
dff u6(clk,rst,d12,d13);
assign m4=(d13<<1);//d13*h3;
assign d3=d2+m4;
dff u8(clk,rst,d13,d14);
assign m5=d14;//d14*h4;
assign dataout=d3+m5;
endmodule

module dff(clk,rst,d,q);// sub module d flipflop
input clk,rst;
input [31:0]d;
output [31:0]q;
reg [31:0]q;
always@(posedge clk)
begin
if(rst==1)
begin
q=0;
end
else
begin
q=d;
end
end

endmodule

