module csd(y,x,multi);

  input [31:0] x;
  input [31:0] multi;
  output [31:0] y;
  reg [31:0] y1;
  reg[31:0] mul;
 reg[31:0] count; 
   reg t;
   integer value=0;

  always @(multi) begin
    y1=0;
    mul=0;
   mul=mul+multi; 

 
   for(count=0;count<=31;count=count+1)
   begin
 if(mul[count]==1)begin
      y1=y1+1;
   if(y1>1)begin
     mul[count]=0;
     
     end
    end
 else if(y1>1 && mul[count]==0 )
begin
mul[count]=1;
mul[count-y1]=t;
y1=0;
count=count-1;
end 
 else if(y1==1 && mul[count]==0 )
 begin
 y1=0;
 
 end
 end
   
   for(count=0;count<=31;count=count+1)
   begin
 if(mul[count]==1)begin
   value=value+(x<<count);
   end
   else if(mul[count]==0)
     begin
       
       
       end
       else begin
         value=value-(x<<count);
        
         end
  end 
   
     end
assign y=value;
endmodule