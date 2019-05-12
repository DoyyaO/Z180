SetActiveLib -work
#Compiling UUT module design files
comp -include $DSN\src\ioport.v
comp -include $DSN\src\mmu180.v
comp -include "$DSN\src\TestBench\mmu180_Testbench.v"
asim mmu180_Testbench

wave
wave -noreg reset_n
wave -noreg en
wave -noreg iorq_n
wave -noreg mreq_n
wave -noreg rd_n
wave -noreg wr_n
wave -noreg phi
wave -noreg addr_in
wave -noreg dq
wave -noreg dq_bidir
wave -noreg addr_out
wave -noreg cbar_hinyb
wave -noreg cbar_lonyb

run

#End simulation macro
