This repository will document my progress on a number of FPGA projects

I will add a note here upon completion of each project to document any difficulties, and what I have learned.

---------------------------------------------------------------------------

Project 1 - ButtonpressLEDR

I learned about using iverilog (a simulation tool for Verilog), compiling code programming the lattice iCE40UP5K FPGA 
from the command prompt using the open-source toolchain. This includes:

yosys - turns your HDL into logic
pnr - place-and-route tool
icepack - creates a binary bitstream
iceprog - writes the bitstream to flash memory

---------------------------------------------------------------------------

Project 2 - ExternalLED

I used the waveform viewer GTKWAVE which helps to debug your verilog code. 
Created an excel sheet for generating the iverilog command for compiling 
and building a .vvp file (the simulation binary) - a .vcp file can be generated with the command 'vvp <nameofsimulationbinary>.vvp 

To view the waveform in GTKWAVE the command is gtkwave <nameofsimulationbinary>.vcd 

Also started adding to my bash config file, which can be viewed with the command:

open -a TextEdit ~/.bash_profile

and saved with the command: 

source ~/.bash_profile

---------------------------------------------------------------------------

Project 3 - Open drain behaviour

In this project I had to instantiate some I/O primitives - in particular the IO_SB primitive. Information about this can be found in the 'technology library' document. 

I did struggle getting the correct behaviour, due to the PIN_TYPE parameter not being set correctly initially. 

I also created a makefile to compile my code and program the FPGA. 

Added a line to my bash config (which will need updating for each project) to navigate to the folder containing the makefile, and run the makefile.. the
command would be something like this 

makeFPGA TOP=example.v prog 

to compile the code from example.v and program the FPGA with the bitstream.

---------------------------------------------------------------------------

Project 4 - Combinational Logic

Something new here was adding some new functionality to the test bench .v file that was particularly useful in implementing a truth table from the source code. 

This was done as follows: 

 $display("S7 S8 | OUT1 OUT2 OUT3 OUT4 OUT5");
 $monitor("%b  %b |   %b    %b    %b    %b    %b", 
   tb_S7, tb_S8, tb_OUT1, tb_OUT2, tb_OUT3, tb_OUT4, tb_OUT5);

The display is like a 'printf' call in C and monitor will print the state of each of the arguments whenever one of them changes. 











