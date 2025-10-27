`timescale 1ns/1ps

module voting_system_tb;

    // Testbench signals
    reg tb_IN_A;
    reg tb_IN_B;
    reg tb_IN_C;
    wire tb_NO_VOTES_LED;
    wire tb_ONE_VOTE_LED;
    wire tb_TWO_VOTES_LED;
    wire tb_THREE_VOTES_LED;

    // Instantiate the module under test
    voting_system uut (
        .IN_A(tb_IN_A),
        .IN_B(tb_IN_B),
        .IN_C(tb_IN_C),
        .NO_VOTES_LED(tb_NO_VOTES_LED),
        .ONE_VOTE_LED(tb_ONE_VOTE_LED),
        .TWO_VOTES_LED(tb_TWO_VOTES_LED),
        .THREE_VOTES_LED(tb_THREE_VOTES_LED)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("voting_system.vcd");      // Output VCD file
        $dumpvars(0, voting_system_tb); // Dump all variables in this scope

        $display("A  B  C | None    One    Two    Three");
        $monitor("%b  %b  %b |   %b      %b      %b      %b", 
            tb_IN_A, tb_IN_B, tb_IN_C, tb_NO_VOTES_LED, tb_ONE_VOTE_LED, tb_TWO_VOTES_LED, tb_THREE_VOTES_LED);
    

        // Test function of the three-way voting system 
     
        tb_IN_A = 0;
        tb_IN_B = 0;
        tb_IN_C = 0;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 0;        
        tb_IN_C = 1;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 1;        
        tb_IN_C = 0;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 1;        
        tb_IN_C = 1;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 0;        
        tb_IN_C = 0;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 0;        
        tb_IN_C = 1;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 1;        
        tb_IN_C = 0;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 1;        
        tb_IN_C = 1;
        #10;
        $finish;  // End simulation
    end

endmodule