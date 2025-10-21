`timescale 1ns/1ps

module two_to_one_multiplexer_tb;

    // Testbench signals
    reg tb_sel;
    reg tb_a;
    reg tb_b;
    wire tb_out;
    

    // Instantiate the module under test
    two_to_one_multiplexer uut (
        .sel(tb_sel),
        .a(tb_a),
        .b(tb_b),
        .out(tb_out)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("two_to_one_multiplexer.vcd");      // Output VCD file
        $dumpvars(0, two_to_one_multiplexer_tb); // Dump all variables in this scope

        $display("Sel A B  | OUT");
        $monitor("%b  %b  %b |  %b", 
            tb_sel, tb_a, tb_b, tb_out);
    

        // Test function of 2-1 multiplexer
        tb_sel = 0;
        tb_a = 0;
        tb_b = 0;
        #10;
        tb_sel = 0;
        tb_a = 0;
        tb_b = 1;
        #10;
        tb_sel = 0;
        tb_a = 1;
        tb_b = 0;
        #10;
        tb_sel = 0;
        tb_a = 1;
        tb_b = 1;
        #10
        tb_sel = 1;
        tb_a = 0;
        tb_b = 0;
        #10;
        tb_sel = 1;
        tb_a = 0;
        tb_b = 1;
        #10
        tb_sel = 1;
        tb_a = 1;
        tb_b = 0;
        #10
        tb_sel = 1;
        tb_a = 1;
        tb_b = 1;
        #10

        $finish;  // End simulation
    end

endmodule