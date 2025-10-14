/***************************************************
Engineer: Harrison Warke
Date Created: 13/10/2025
Module Name: open_drain_behaviour
Project Name: LAoE
Target Device: Lattice ICE40UP5K-SG48


Description: configure the GPIO pins as open-drain, capable of sinking current
through an external LED when the button is pressed 
***************************************************/

module open_drain_behaviour (
    input wire BUTTON,
    inout wire LED_CATHODE
);

    wire button_in;
    wire led_on;
    assign led_on = ~button_in; // pressed = 0  -->  led_on = 1

    // button pin: input-only (no driver enabled) 
    // leave outputs/oe disconnected for input only behavior

    SB_IO #(
        .PIN_TYPE(6'b000001),     // configure as input only, no output capability
        .NEG_TRIGGER(1'b0)
    ) 
        button_io (
        .PACKAGE_PIN(BUTTON),      // physical pin to use as input
        .D_IN_0(button_in)           // where to put data from that pin
        );
    

    //LED pin: open-drain output (sinks current when led_on = 1)

    SB_IO #(
        .PIN_TYPE(6'b011001),       //configure as open-drain output
        .NEG_TRIGGER(1'b0)
    ) 
        led_io (
        .PACKAGE_PIN(LED_CATHODE),
        .D_OUT_0(led_on),            //drives NMOS gate
        .OUTPUT_ENABLE(led_on)      //only pull low when on, otherwise Hi-Z);
        );


endmodule