v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -440 830 -40 {flags=graph
y1=4.4
y2=6.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00013243816
x2=0.00041894219
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"v_out_a_p v_out_a_n - db20 \\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=ac
rawfile=$netlist_dir/diff_amp_tb.raw}
B 2 30 -950 830 -550 {flags=graph
y1=3.6
y2=5.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00013243816
x2=0.00041894219
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"v_out_a_p v_out_a_n - \\"
v_in_a_p"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/diff_amp_tb.raw}
B 2 30 -1420 830 -1020 {flags=graph
y1=-0.8
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00013243816
x2=0.00041894219
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_out_a_p
v_out_a_n
v_in_a_p"
color="4 17 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/diff_amp_tb.raw}
B 2 40 -1870 840 -1470 {flags=graph
y1=-0.8
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00013243816
x2=0.00041894219
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=v_out_a_p
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/diff_amp_tb.raw}
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
N -670 -430 -640 -430 {
lab=GND}
N -660 -410 -660 -400 {
lab=GND}
N -660 -410 -640 -410 {
lab=GND}
N -570 -330 -540 -330 {
lab=VSS}
N -570 -360 -570 -330 {
lab=VSS}
N -290 -290 -260 -290 {
lab=VSS}
N -290 -320 -290 -290 {
lab=VSS}
N -290 -550 -260 -550 {
lab=VCC}
N -290 -550 -290 -520 {
lab=VCC}
N -290 -460 -290 -440 {
lab=V_IN_A_P}
N -190 -460 -160 -460 {
lab=V_OUT_A_P}
N -190 -380 -160 -380 {
lab=V_OUT_A_N}
N -490 -410 -490 -400 {
lab=#net1}
N -490 -440 -490 -430 {
lab=#net2}
N -570 -510 -530 -510 {
lab=VCC}
N -570 -510 -570 -480 {
lab=VCC}
N -290 -460 -250 -460 {
lab=V_IN_A_P}
N -1250 -430 -1220 -430 {
lab=V_IN_A_P}
N -1220 -370 -1220 -360 {
lab=GND}
N -380 -320 -380 -290 {
lab=VSS}
N -380 -290 -290 -290 {
lab=VSS}
N -380 -470 -290 -440 {
lab=V_IN_A_P}
N -920 -430 -580 -550 {
lab=V_IN_A_P}
N -580 -550 -430 -550 {
lab=V_IN_A_P}
N -430 -550 -380 -470 {
lab=V_IN_A_P}
N -380 -380 -250 -380 {
lab=#net3}
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
C {diff_amp.sym} -490 -420 0 0 {name=x1}
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
C {devices/lab_pin.sym} -260 -550 2 0 {name=p15 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -530 -510 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {devices/simulator_commands_shown.sym} -980 100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  save all
  op
  remzerovec
  write diff_amp_tb.raw
  set appendwrite
  ac dec 10 1e3 100e6
  remzerovec
  write diff_amp_tb.raw
  tran 10n 100u
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
C {devices/vsource.sym} -1220 -400 0 0 {name=V3 value="0 ac 1 0
+ sin(0 1m 100meg 0 0 0)"}
C {devices/lab_pin.sym} -1250 -430 2 1 {name=p3 sig_type=std_logic lab=V_IN_A_P}
C {devices/gnd.sym} -1220 -360 0 0 {name=l4 lab=GND}
C {devices/res.sym} -380 -350 0 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -380 -440 0 0 {name=R4
value=500
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -670 -430 0 0 {name=l5 lab=GND}
