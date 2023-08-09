`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 15:58:39
// Design Name: 
// Module Name: melayball
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


module melayball(di,clk,rst,d

    );  
    input di,clk,rst;
    output reg  d;
     reg [1:0]current,next;
    parameter  r=2'b00;
     parameter g=2'b01;
     parameter b=2'b10;
    always @(posedge clk ) begin 
    if (rst) begin 
   
    current = r; end 
    else  
    current = next;
   end 
   always @(di ,current) begin 
   case(current)
   r:begin
        if(di==1)begin
          next= g;
           d=1'b0; end 
            else 
            begin  
            next=current ; 
            d =0;end 
             end 
    g:begin
     if(di==1)  begin 
     next=b; d=0; end 
    else  begin  next= r; d=0;
    end  end 
    b:begin 
    if(di==1) begin next=r; d=1;  end 
    else  begin next = r; d=0; end  end 
    default next=r;
    endcase 

   end
endmodule





/*module melayball(di,clk,rst,q

    );
input [1:0]di;
input clk,rst;
output reg q;
 reg [1:0]current,next;
    parameter  a=3'b000;//1
     parameter b=3'b001;//2
     parameter c=3'b010;//3
     parameter  e=3'b011;//4
     parameter f=3'b100;//5
     parameter g=3'b101;//6
     parameter h=3'b110;//7
     parameter i=3'b111;//8
    always @(posedge clk ) begin 
    if (rst) begin 
   
    current = a; end 
    else  
    current = next;
   end 
always @(current,di)
case(current)
a:begin  if(di==0)
 begin 
 next= f;
 q=0; end 
 else 
next=h;
q=0;
 end 
b:begin if (di===01)
begin 
next=g;
q=0; end 
else 
next=f;
q=0;
end 
c:begin if (di==10)
begin 
next=g;
q=0;
end 
else 
next =h;
q=1; 
end 
default  next=a;
 
endcase

 
endmodule */

