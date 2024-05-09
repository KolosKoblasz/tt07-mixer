v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Load sky 130 spice models} -290 100 0 0 0.4 0.4 {}
T {Anotate operating
point data (voltages,
currents) into the 
schematic.} -290 340 0 0 0.4 0.4 {}
T {read raw file and load
waves into Xschem graphs} -290 240 0 0 0.4 0.4 {}
T {B: Differential Input, Single Ended Output} -730 -260 0 0 0.4 0.4 {}
T {A: Differential Input, Single Ended Output} -740 -600 0 0 0.4 0.4 {}
N -1000 -630 -970 -630 {
lab=VCC}
N -870 -630 -840 -630 {
lab=VSS}
N -970 -570 -970 -560 {
lab=GND}
N -840 -570 -840 -560 {
lab=GND}
N -920 -430 -670 -430 {
lab=V_IN_A_P}
N -670 -430 -640 -430 {
lab=V_IN_A_P}
N -660 -410 -660 -400 {
lab=GND}
N -660 -410 -640 -410 {
lab=GND}
N -570 -330 -540 -330 {
lab=VSS}
N -570 -360 -570 -330 {
lab=VSS}
N -910 -130 -660 -130 {
lab=V_IN_B_P}
N -660 -130 -630 -130 {
lab=V_IN_B_P}
N -560 -30 -530 -30 {
lab=VSS}
N -560 -60 -560 -30 {
lab=VSS}
N -910 -110 -630 -110 {
lab=V_IN_B_N}
N -290 -290 -260 -290 {
lab=VSS}
N -290 -320 -290 -290 {
lab=VSS}
N -350 -40 -320 -40 {
lab=VSS}
N -350 -70 -350 -40 {
lab=VSS}
N -250 -130 -150 -130 {
lab=V_OUT_B_P}
N -290 -550 -260 -550 {
lab=VSS}
N -290 -550 -290 -520 {
lab=VSS}
N -490 -440 -290 -440 {
lab=#net1}
N -290 -460 -290 -440 {
lab=#net1}
N -290 -380 -250 -380 {
lab=#net2}
N -290 -400 -290 -380 {
lab=#net2}
N -490 -400 -290 -400 {
lab=#net2}
N -190 -460 -160 -460 {
lab=V_OUT_A_P}
N -190 -380 -160 -380 {
lab=V_OUT_A_N}
N -350 -130 -310 -130 {
lab=#net3}
N -480 -130 -350 -130 {
lab=#net3}
N -490 -410 -490 -400 {
lab=#net2}
N -490 -440 -490 -430 {
lab=#net1}
N -560 -210 -520 -210 {
lab=VCC}
N -560 -210 -560 -180 {
lab=VCC}
N -570 -510 -530 -510 {
lab=VCC}
N -570 -510 -570 -480 {
lab=VCC}
N -290 -460 -250 -460 {
lab=#net1}
C {devices/code.sym} -630 60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -590 390 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -590 250 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {diff_amp.sym} -490 -420 0 0 {name=diff_amp_A}
C {devices/vsource.sym} -970 -600 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -1000 -630 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} -970 -560 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -840 -600 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -870 -630 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -840 -560 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} -920 -430 0 0 {name=p4 lab=V_IN_A_P}
C {devices/gnd.sym} -660 -400 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -540 -330 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -160 -380 0 0 {name=p7 lab=V_OUT_A_N}
C {diff_amp.sym} -480 -120 0 0 {name=diff_amp_B}
C {devices/ipin.sym} -910 -130 0 0 {name=p8 lab=V_IN_B_P}
C {devices/lab_pin.sym} -520 -210 0 1 {name=p9 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -530 -30 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -150 -130 0 0 {name=p11 lab=V_OUT_B_P}
C {devices/ipin.sym} -910 -110 0 0 {name=p13 lab=V_IN_B_N}
C {devices/opin.sym} -160 -460 0 0 {name=p6 lab=V_OUT_A_P}
C {devices/res.sym} -220 -380 3 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -290 -350 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -260 -290 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -320 -40 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 -550 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -530 -510 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {devices/simulator_commands_shown.sym} -980 100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 100p 200n
write diff_amp_tb.raw
.endc
"}
C {devices/res.sym} -220 -460 3 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -290 -490 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -350 -100 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -280 -130 3 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
