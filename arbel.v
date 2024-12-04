`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2024 16:03:37
// Design Name: 
// Module Name: arbel
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

(* keep_hierarchy = "yes" *) module arbel(
    input X,
    input Y,
    input C,
    output W,
    output Z
    );
    wire W1, W2;
    wire Z1, Z2;
    
    mux2x1 M1(X, Y, C, W1);
    mux2x1 M2(Y, X, C, Z1);
    
    not N1(W2, W1);
    not N2(W, W2);
    not N7(Z2, Z1);
    not N8(Z, Z2);
    
endmodule
