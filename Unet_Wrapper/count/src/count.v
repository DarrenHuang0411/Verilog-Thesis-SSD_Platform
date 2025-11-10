`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/20 12:31:38
// Design Name: 
// Module Name: count
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/20 12:10:41
// Design Name: 
// Module Name: cycle_counter
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


module count(
    input clk,
    input rst,
    input start,
    input stop,
    output reg [63:0] counter
);
    
always@(posedge clk or negedge rst)begin
    if(!rst)begin
        counter <= 64'd0;
    end
    else if(stop)begin
        counter <= counter;
    end    
    else  if (start) begin
        counter <= counter + 64'd1;
    end    
end
    
endmodule

