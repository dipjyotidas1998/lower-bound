module matrix(y1,y2,x1,x2);
input[31:0] x1;
input [31:0] x2;
output[31:0] y1;
output[31:0] y2;
reg[31:0]c; 
reg[31:0]a;
reg[31:0]b;
always @(x1,x2) begin
  /*   | y1 | |21  39 | | x1 |
       |    |=|       | |    |
       | y2 | |11   5 | | x2 |
                                                                     */
//here c=(3x1 + 7x2)                                                                     
c=(((x1<<1)+x1)+((x2<<2)+x2));
//y1=a= 7(3xl + 5x2) + 4x2= 7c + 4x2
//y2=b= 3x1 + 5x2 +8x1=c + 8x1
a=(((c<<2)+(c<<1)+c)+(x2<<2));

b=(c+(x1<<3));
end
assign y1=a;
assign y2=b;


endmodule 


