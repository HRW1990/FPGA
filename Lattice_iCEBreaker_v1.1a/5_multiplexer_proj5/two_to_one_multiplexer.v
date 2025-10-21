/***************************************************
Engineer: Harrison Warke
Date Created: 21/10/2025
Module Name: Simple Multiplexer 
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48

Description: Create a 2-1 multiplexer out of logic gates

Truth table below 

Sel  A  B |  Out
0    0  0 |   0
0    0  1 |   0
0    1  0 |   1
0    1  1 |   1
1    0  0 |   0
1    0  1 |   1
1    1  0 |   0
1    1  1 |   1

***************************************************/

module two_to_one_multiplexer (
    input sel,
    input a,
    input b,
    output out
);

assign out = (sel & b) | (~sel & a);

endmodule