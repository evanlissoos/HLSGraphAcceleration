############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project scheduler
set_top scheduler
add_files scheduler.cpp
add_files scheduler.h
add_files -tb scheduler_testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./scheduler/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
