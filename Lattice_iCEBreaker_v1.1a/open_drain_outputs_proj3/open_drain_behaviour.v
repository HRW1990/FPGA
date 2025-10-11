module top (
    inout wire BUTTON,
    inout wire LED_CATHODE
);

    wire button_in;
    wire led_on;
    assign led_on = ~button_in; // pressed = 0  -->  led_on = 1

    // button pin: input-only (no driver enabled) 
    SB_IO_OD #(
        .PIN_TYPE(6'b0000_01), // input only
        .NEG_TRIGGER(1'b0)
    ) button_io (
        .PACKAGE_PIN(BUTTON),
        .DIN0(button_in)
        // leave outputs/oe disconnected for input only behavior
    );
    

    //LED pin: open-drain output (sinks current when led_on=1)
    SB_IO_OD #(
        .PINTYPE(6'b011001), //open-drain output
        .NEG_TRIGGER(1'b0)
    ) led_io (
        .PACKAGE_PIN(LED_CATHODE),
        .DOUT0(led_on),         //drives NMOS gate
        .OUTPUTENABLE(led_on)   //only pull low when on, otherwise Hi-Z);
    );


endmodule
