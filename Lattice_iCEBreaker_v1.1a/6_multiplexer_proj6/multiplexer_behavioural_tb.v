`timescale 1ns/1ps

module multiplexer_behavioural_tb;

    // Testbench signals
    reg tb_SEL;
    reg tb_IN_A;
    reg tb_IN_B;
    wire tb_OUTPUT;
    

    // Instantiate the module under test
    multiplexer_behavioural uut (
        .SEL(tb_SEL),
        .IN_A(tb_IN_A),
        .IN_B(tb_IN_B),
        .OUTPUT(tb_OUTPUT)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("multiplexer_behavioural.vcd");      // Output VCD file
        $dumpvars(0, multiplexer_behavioural_tb); // Dump all variables in this scope

        $display("Sel A B  | OUT");
        $monitor("%b  %b  %b |  %b", 
            tb_SEL, tb_IN_A, tb_IN_B, tb_OUTPUT);
    

        // Test function of 2-1 multiplexer
        tb_SEL = 0;
        tb_IN_A = 0;
        tb_IN_B = 0;
        #10;
        tb_SEL = 0;
        tb_IN_A = 0;
        tb_IN_B = 1;
        #10;
        tb_SEL = 0;
        tb_IN_A = 1;
        tb_IN_B = 0;
        #10;
        tb_SEL = 0;
        tb_IN_A = 1;
        tb_IN_B = 1;
        #10
        tb_SEL = 1;
        tb_IN_A = 0;
        tb_IN_B = 0;
        #10;
        tb_SEL = 1;
        tb_IN_A = 0;
        tb_IN_B = 1;
        #10
        tb_SEL = 1;
        tb_IN_A = 1;
        tb_IN_B = 0;
        #10
        tb_SEL = 1;
        tb_IN_A = 1;
        tb_IN_B = 1;
        #10

        $finish;  // End simulation
    end

endmodule