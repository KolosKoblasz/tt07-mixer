set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
readnet verilog ../src/project.v $source
readnet spice ../xschem/simulation/gilbert_mixer.spice $source
#add an GL verilog of your digital blocks:
readnet verilog ../verilog/gl/mixer_control.v
lvs "$layout $project" "$source $project" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
