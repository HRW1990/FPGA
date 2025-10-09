module use_open_drain_outputs (
    output OPEN_DRAIN_OP1,
    input  control;
);

    // When control= 1 → sink current (pin = 0)
    // When control = 0 → float (pin goes high via pull-up)
    SB_IO_OD open_drain_output1 (
        .PACKAGE_PIN(RGB0),
        .D_OUT(control)
    );

endmodule