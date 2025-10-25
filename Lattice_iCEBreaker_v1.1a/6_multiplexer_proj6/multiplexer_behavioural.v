 /***************************************************
Engineer: Harrison Warke
Date Created: 22/10/2025
Module Name: multiplexer_behavioural
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48

Description: Create a 2-1 multiplexer using a conditional operator.

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

module multiplexer_behavioural (
    input SEL,
    input IN_A,
    input IN_B,
    output OUTPUT
);

assign OUTPUT = SEL ? IN_B : IN_A;

endmodule