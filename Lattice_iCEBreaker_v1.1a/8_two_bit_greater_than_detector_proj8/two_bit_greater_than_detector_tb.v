`timescale 1ns/1ps

module two_bit_greater_than_detector_tb;

    // Testbench signals
    reg tb_IN_A;
    reg tb_IN_B;
    reg tb_IN_C;
    reg tb_IN_D;
    wire tb_OUT;
    

    // Instantiate the module under test
    two_bit_greater_than_detector uut (
        .IN_A(tb_IN_A),
        .IN_B(tb_IN_B),
        .IN_C(tb_IN_C),
        .IN_D(tb_IN_D),
        .OUT(tb_OUT)
    );

    initial begin
        // For GTKWave to dump waveform data
        $dumpfile("two_bit_greater_than_detector.vcd");      // Output VCD file
        $dumpvars(0, two_bit_greater_than_detector_tb); // Dump all variables in this scope

        $display("A  B  C  D | OUT");
        $monitor("%b  %b  %b  %b | %b", 
            tb_IN_A, tb_IN_B, tb_IN_C, tb_IN_D, tb_OUT);
    

        // Test function of two bit greater than detector 
     
        tb_IN_A = 0;
        tb_IN_B = 0;
        tb_IN_C = 0;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 0;        
        tb_IN_C = 0;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 0;        
        tb_IN_C = 1;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 0;        
        tb_IN_C = 1;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 1;        
        tb_IN_C = 0;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 1;        
        tb_IN_C = 0;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 1;        
        tb_IN_C = 1;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 0;
        tb_IN_B = 1;        
        tb_IN_C = 1;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 0;        
        tb_IN_C = 0;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 0;        
        tb_IN_C = 0;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 0;        
        tb_IN_C = 1;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 0;        
        tb_IN_C = 1;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 1;        
        tb_IN_C = 0;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 1;        
        tb_IN_C = 0;
        tb_IN_D = 1;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 1;        
        tb_IN_C = 1;
        tb_IN_D = 0;
        #10;
        tb_IN_A = 1;
        tb_IN_B = 1;        
        tb_IN_C = 1;
        tb_IN_D = 1;
        #10;
        $finish;  // End simulation
    end

endmodule