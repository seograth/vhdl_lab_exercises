# vhdl_lab_exercises
VHDL lab exercises of a learning course

For the simulations I use GHDL simulator:
https://github.com/ghdl/ghdl

For wave viewer and to analyze the waveforms I use GTKWave
https://github.com/gtkwave/gtkwave

--- Example given ---

Navigate through cmd into the lab_1 exercise folder.

ghdl -i lab1.vhdl -> Import the design file

ghdl -i t_lab1.vhdl -> Import the testbench file

ghdl -m t_lab1_wave -> Run make command to analyse the design

ghdl -r t_lab1 --wave=t_lab1_wave.ghw -> Run the simulation and generate the output wave

gtkwave t_lab1_wave.ghw -> Open the output file of design
