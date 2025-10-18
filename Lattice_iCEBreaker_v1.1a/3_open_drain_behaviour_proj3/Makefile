# My Makefile 

#================== CONFIGURABLE INPUTS ===============

TOP ?= top # make TOP=blinky to override

SRC = $(TOP).v # assumes verilog source file is named the same as the top module    

all: $(TOP).bin # default target - this defines what make will do if no target is specified

#================== TOOLCHAIN STEPS ====================

# Yosys Synthesis

$(TOP).json: $(SRC)
	yosys -p "synth_ice40 -top $(TOP) -json $@" $<

# place-and-route with nextpnr

$(TOP).asc: $(TOP).json icebreaker.pcf
	nextpnr-ice40 --up5k --package sg48 --json $< --pcf icebreaker.pcf --asc $@

# icepack to create binary file for programming
$(TOP).bin: $(TOP).asc
	icepack $< $@

#================== PROGRAMMING ========================

prog: $(TOP).bin
	iceprog $<

#================== HOUSEKEEPING =======================

clean:
	rm -f *.json *.asc *.bin

#================== COMMENTS ===========================

# make TOP=example           # compile
# make TOP=example prog      # compile + flash
# make clean                 # delete build artifacts

# this makefile assumes that if your source file is named <example>.v
# then your top-level module is named <example>