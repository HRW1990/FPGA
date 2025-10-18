`timescale 1ns/1ps

module external_LED_tb;

    // Testbench signals
    reg tb_button;
    wire tb_EXTERNAL_LED;

    // Instantiate the module under test (MUT)
    external_LED uut (
        .button(tb_button),
        .EXTERNAL_LED(tb_EXTERNAL_LED)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("test_project2.vcd");      // Output VCD file
        $dumpvars(0, external_LED_tb); // Dump all variables in this scope

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