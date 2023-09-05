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








