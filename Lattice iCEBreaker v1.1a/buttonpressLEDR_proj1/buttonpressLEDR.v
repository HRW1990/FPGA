/***************************************************
Engineer: Harrison Warke
Date Created: 03/10/2025
Module Name:  Switch on Red LED
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48


Description: switch on the RED LED 
connected to pin11 when button (connected to pin 10)
is pressed
***************************************************/

module buttonpressLEDR  (
    input button,
    output LEDR
);

    assign LEDR = button;
    
endmodule
// End of file