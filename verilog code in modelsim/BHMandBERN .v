module BhmBern(y1,y2,y3,y4,x);
input [31:0]x;
output [31:0]y1,y2,y3,y4;
reg [31:0] a;
reg [31:0] b;
reg [31:0] c;
reg [31:0] d;
always@(x) begin 
  a=x+(x<<1);
  a= (a<<8)-((x<<6)-a);//multiply by 707
  
  b=x+(x<<1);
  b=({(b<<5)-((b<<1)+x)}<<3)-x;//multiply by 711
  
  //upto this is for BHM algorithm
  
  //from here BERN algorithm
  c=   (((((((x<<2)+x)<<1)+x)<<5)+x)<<1)+x;//multiply by 707
  
  
  d= ((((x<<2)+x)<<4)-x);
  d=(d<<3)+d;//multiply by 711
  
end
assign y1=a;
assign y2=b;
assign y3=c;
assign y4=d;
endmodule

