/***************************************************
Engineer: Harrison Warke
Date Created: 18/10/2025
Module Name: Simple combinational logic
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48


Description: Connect IO pins to logic level indicator LEDs (external to LED)
and program the following basic combinational functionality using two
external digital input signals.

1 - Not S7
2 - S7 AND S8
3 - S7 NOR S8
4 - S7 XOR S8
5 - S7 AND (NOT S8)
***************************************************/

module combinational_logic (
    input S7,
    input S8,
    output OUT1,
    output OUT2,
    output OUT3,
    output OUT4,
    output OUT5
);

assign OUT1 = ~S7;
assign OUT2 = S7 & S8;
assign OUT3 = ~(S7 | S8);
assign OUT4 = S7 ^ S8;
assign OUT5 = S7 & ~S8;


endmodule