/***************************************************
Engineer: Harrison Warke
Date Created: 25/10/2025
Module Name: two_bit_A_greater_than_B_detector
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48

Description: Create a 2bitnumber1 > 2bitnumber2 detector

Truth table below 

A  B  C  D |  Out
0  0  0  0 |   0
0  0  0  1 |   0
0  0  1  0 |   0
0  0  1  1 |   0
0  1  0  0 |   1
0  1  0  1 |   0
0  1  1  0 |   0
0  1  1  1 |   0
1  0  0  0 |   1
1  0  0  1 |   1
1  0  1  0 |   0
1  0  1  1 |   0
1  1  0  0 |   1
1  1  0  1 |   1
1  1  1  0 |   1
1  1  1  1 |   0

***************************************************/

module two_bit_greater_than_detector (
    input IN_A, //MSB of 2bitnumber1
    input IN_B, //LSB of 2bitnumber1
    input IN_C, //MSB of 2bitnumber2
    input IN_D, //LSB of 2bitnumber2
    output OUT
);

assign OUT = ( IN_A & ~IN_C ) | ( (IN_A~^IN_C) & (IN_B & ~IN_D) );


endmodule