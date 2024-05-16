v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 -270 600 -20 {flags=graph,unlocked
y1=-26.06
y2=21.84
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=12

subdivx=8
node="\\"v_out_a_p db20()\\""
color=4
dataset=0
unitx=1
logx=1
logy=0
divx=5
sweep=""
rawfile=$netlist_dir/diff_amp_tb.raw
sim_type=ac
x1=0}
B 2 50 -840 600 -520 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.5e-07
x2=5.75e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/diff_amp_tb.raw
sim_type=tran
subdivx=3

y1=-2
y2=+2

color="12 7"
node="v_out_a_n
v_out_a_p"}
B 2 50 -520 600 -270 {flags=graph,unlocked
rawfile=$netlist_dir/diff_amp_tb.raw
sim_type=ac
y1=1.1
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12

subdivx=8
node=ph(v_out_a_p)
color=4
dataset=0
unitx=1
logx=1
logy=0
divx=5
sweep=""}
B 2 60 -1230 610 -910 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=6.840804e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/diff_amp_tb.raw
sim_type=tran
subdivx=3

y1=-4.6390588
y2=3.6553412
rainbow=1
color="11 5"
node="v_in_a_n
v_in_a_p"
x1=2.0837827e-06}
T {Load sky 130 spice models} -290 100 0 0 0.4 0.4 {}
T {Anotate operating
point data (voltages,
currents) into the
schematic.} -290 340 0 0 0.4 0.4 {}
T {read raw file and load
waves into Xschem graphs} -290 240 0 0 0.4 0.4 {}
T {A: Differential Input, Differential Output} -740 -600 0 0 0.4 0.4 {}
N -1040 -640 -1010 -640 {
lab=VCC}
N -910 -640 -880 -640 {
lab=VSS}
N -1010 -580 -1010 -570 {
lab=GND}
N -880 -580 -880 -570 {
lab=GND}
N -570 -330 -540 -330 {
lab=VSS}
N -570 -360 -570 -330 {
lab=VSS}
N -490 -410 -490 -400 {
lab=V_OUT_A_N}
N -490 -440 -490 -430 {
lab=V_OUT_A_P}
N -570 -510 -530 -510 {
lab=VCC}
N -570 -510 -570 -480 {
lab=VCC}
N -1340 -470 -1250 -470 {
lab=V_IN_A_P}
N -1250 -470 -1250 -440 {
lab=V_IN_A_P}
N -1250 -380 -1250 -370 {
lab=VSS}
N -920 -450 -890 -450 {
lab=V_IN_A_P}
N -760 -450 -670 -450 {
lab=#net1}
N -490 -440 -160 -440 {
lab=V_OUT_A_P}
N -490 -400 -160 -400 {
lab=V_OUT_A_N}
N -790 -540 -760 -540 {
lab=VSS}
N -760 -540 -760 -510 {
lab=VSS}
N -800 -450 -760 -450 {
lab=#net1}
N -890 -450 -860 -450 {
lab=V_IN_A_P}
N -670 -450 -640 -450 {
lab=#net1}
N -640 -450 -640 -430 {
lab=#net1}
N -920 -380 -890 -380 {
lab=V_IN_A_N}
N -790 -290 -760 -290 {
lab=VSS}
N -760 -320 -760 -290 {
lab=VSS}
N -800 -380 -760 -380 {
lab=#net2}
N -890 -380 -860 -380 {
lab=V_IN_A_N}
N -760 -380 -640 -380 {
lab=#net2}
N -640 -410 -640 -380 {
lab=#net2}
N -1290 -370 -1250 -370 {
lab=VSS}
N -1340 -290 -1250 -290 {
lab=V_IN_A_N}
N -1250 -310 -1250 -290 {
lab=V_IN_A_N}
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
C {devices/vsource.sym} -1010 -610 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -1040 -640 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} -1010 -570 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -880 -610 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -910 -640 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -880 -570 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} -920 -450 0 0 {name=p4 lab=V_IN_A_P}
C {devices/lab_pin.sym} -540 -330 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -160 -400 0 0 {name=p7 lab=V_OUT_A_N}
C {devices/opin.sym} -160 -440 0 0 {name=p6 lab=V_OUT_A_P}
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
  *ac dec 10 1e3 100e6
  *remzerovec
  *write diff_amp_tb.raw
  tran 100n 5u
  write diff_amp_tb.raw

.endc
"}
C {devices/vsource.sym} -1250 -410 0 0 {name=V4 value="0 ac 1 0
+ sin(900m 900m 1meg 0 0 0)"
}
C {devices/lab_pin.sym} -1340 -470 2 1 {name=p17 sig_type=std_logic lab=V_IN_A_P}
C {devices/lab_pin.sym} -1340 -290 2 1 {name=p18 sig_type=std_logic lab=V_IN_A_N}
C {devices/lab_pin.sym} -1290 -370 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/res.sym} -830 -450 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -760 -480 2 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -790 -540 2 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -920 -380 2 1 {name=p3 lab=V_IN_A_N}
C {devices/res.sym} -830 -380 1 1 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -760 -350 0 1 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -790 -290 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1250 -340 0 0 {name=V3 value="0 ac 1 0
+ sin(900m 900m 1meg 0 0 0)"
}
