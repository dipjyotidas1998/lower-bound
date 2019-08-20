module multi(y,x);
  input[31:0] x;
  output[31:0] y;
  reg [31:0] a;
   reg [31:0] b;
   reg [31:0] c;
   reg [31:0] d;
 
 
   always@(x)begin
 
 
 //here defined a=8x
  a=(x<<3);
  //here defined b=9x
  b=a+x;
//here defined c=23x
  c=(a<<2)-b;
  //here defined d=81x 
  d=(b<<3)+b;
  
end
assign y=d;

endmodule

