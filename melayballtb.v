`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2023 17:17:08
// Design Name: 
// Module Name: melayballtb
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



module melayballtb(

    );
    
    reg clk,di,rst;
    wire q;
  melayball dut(.di(di),.clk(clk),.rst(rst),.d(q));
    initial begin 
    clk=0;
    rst=1;
    end 
   always # 5 clk=~clk;
   initial  #10  rst=0;
    initial begin 
   di=0; # 10 
    di=1 ;#10
   di=0; # 10 
    di=1 ;#10
    di=0; # 10 
    di=1 ;#10
    di=1; # 10 
    di=1 ;#10
    di=0; # 10 
    di=1 ;#10
    di=0; # 10 
    di=1 ;#10 
    di=1; # 10 
    di=1 ;#10
    di=0; # 10 
    di=1 ;#10
    di=0; # 10 
    di=1 ;#10
    di=1 ;#10
    di=1; # 10 
    di=1 ;#10
    di=0; # 10 
    di=1 ;#10
    
     $finish;
     end 
endmodule 
