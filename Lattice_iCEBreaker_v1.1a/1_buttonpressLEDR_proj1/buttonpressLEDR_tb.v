`timescale 1ns/1ps

module buttonpressLEDR_tb;

    // Testbench signals
    reg tb_button;
    wire tb_LEDR;

    // Instantiate the module under test (MUT)
    buttonpressLEDR uut (
        .button(tb_button),
        .LEDR(tb_LEDR)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("test.vcd");      // Output VCD file
        $dumpvars(0, buttonpressLEDR_tb); // Dump all variables in this scope

        // Test input pattern
        tb_button = 0;
        #10;
        tb_button = 1;
        #10;
        tb_button = 0;
        #10;

        $finish;  // End simulation
    end

endmodule