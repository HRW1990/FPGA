`timescale 1ns/1ps

module combinational_logic_tb;

    // Testbench signals
    reg tb_S7;
    reg tb_S8;
    wire tb_OUT1;
    wire tb_OUT2;
    wire tb_OUT3;
    wire tb_OUT4;
    wire tb_OUT5;
    

    // Instantiate the module under test (MUT)
    combinational_logic uut (
        .S7(tb_S7),
        .S8(tb_S8),
        .OUT1(tb_OUT1),
        .OUT2(tb_OUT2),
        .OUT3(tb_OUT3),
        .OUT4(tb_OUT4),
        .OUT5(tb_OUT5)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("combinational_logic_tb.vcd");      // Output VCD file
        $dumpvars(0, combinational_logic_tb); // Dump all variables in this scope

        $display("S7 S8 | OUT1 OUT2 OUT3 OUT4 OUT5");
        $monitor("%b  %b |   %b    %b    %b    %b    %b", 
            tb_S7, tb_S8, tb_OUT1, tb_OUT2, tb_OUT3, tb_OUT4, tb_OUT5);
    

        // Test OUT1, 2, 3, 4 and 5 functions..
        tb_S7 = 0;
        tb_S8 = 0;
        #10;
        tb_S7 = 0;
        tb_S8 = 1;
        #10;
        tb_S7 = 1;
        tb_S8 = 0;
        #10;
        tb_S7 = 1;
        tb_S8 = 1;
        #20;


        $finish;  // End simulation
    end

endmodule