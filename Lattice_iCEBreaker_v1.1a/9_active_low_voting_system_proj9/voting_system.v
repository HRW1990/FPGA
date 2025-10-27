/***************************************************
Engineer: Harrison Warke
Date Created: 26/10/2025
Module Name: voting_system
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG4k

Description: Create a voting system that allows 3 people (A,B and C) to vote
- each by pressing a normally open pushbutton in favour of a proposal - and
then lights one of four LEDs to indicate if none, one, two or three people 
voted for the proposition. All signals, inputs and outputs are active low. 
The inputs are pulled low by a push-button press, and the pin connected to
the external LEDs on the output side are pulled low when switched on.

Truth table below 

A  B  C |  No_Votes_LED  ONE_VOTE_LED  TWO_VOTES_LED  THREE_VOTES_LED
0  0  0 |     1               1              1                0
0  0  1 |     1               1              0                1
0  1  0 |     1               1              0                1
0  1  1 |     1               0              1                1
1  0  0 |     1               1              0                1
1  0  1 |     1               0              1                1
1  1  0 |     1               0              1                1
1  1  1 |     0               1              1                1


***************************************************/

module voting_system (
    input IN_A, 
    input IN_B, 
    input IN_C, 
    output NO_VOTES_LED,
    output ONE_VOTE_LED,
    output TWO_VOTES_LED,
    output THREE_VOTES_LED
);

//LED 'None' on (0) when no one votes (all inputs HIGH)
assign NO_VOTES_LED = ~(IN_A & IN_B & IN_C);

//LED 'One' on (0) when exactly ONE input is LOW
assign ONE_VOTE_LED = (~IN_A & ~IN_B) | (~IN_A & ~IN_C)  | (~IN_B & ~IN_C) | (IN_A & IN_B & IN_C);

//LED 'Two' on (0) when exactly two inputs are LOW
assign TWO_VOTES_LED = (IN_A & IN_B) | (IN_A & IN_C) | (IN_B & IN_C) | (~IN_A & ~IN_B & ~ IN_C);

//LED 'Three' on (0) when all three inputs are LOW
assign THREE_VOTES_LED = IN_A | IN_B | IN_C;

endmodule