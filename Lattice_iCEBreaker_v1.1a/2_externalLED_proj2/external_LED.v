/***************************************************
Engineer: Harrison Warke
Date Created: 06/10/2025
Module Name:  external_LED
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48


Description: switch on the external LED 
(connected to pin4) when button (connected to pin 10)
is pressed.
***************************************************/

module external_LED (
    input button,
    output EXTERNAL_LED
);

    assign EXTERNAL_LED = button;
    
endmodule
// End of file