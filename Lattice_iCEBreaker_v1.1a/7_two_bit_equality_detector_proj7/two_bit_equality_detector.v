/***************************************************
Engineer: Harrison Warke
Date Created: 25/10/2025
Module Name: two_bit_equality_detector
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48

Description: Create a 2-bit equality detector

Truth table below 

A  B  C  D |  Out
0  0  0  0 |   1
0  0  0  1 |   0
0  0  1  0 |   0
0  0  1  1 |   0
0  1  0  0 |   0
0  1  0  1 |   1
0  1  1  0 |   0
0  1  1  1 |   0
1  0  0  0 |   0
1  0  0  1 |   0
1  0  1  0 |   1
1  0  1  1 |   0
1  1  0  0 |   0
1  1  0  1 |   0
1  1  1  0 |   0
1  1  1  1 |   1

***************************************************/

module two_bit_equality_detector (
    input IN_A,
    input IN_B,
    input IN_C,
    input IN_D,
    output OUT
);

assign OUT = ( (IN_A == IN_C) & (IN_B == IN_D) ) ? 1'b1 : 1'b0;


endmodule