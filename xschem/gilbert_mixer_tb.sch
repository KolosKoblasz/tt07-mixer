v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 150 580 400 {flags=graph,unlocked
y1=-6.9
y2=41
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=4.8

subdivx=8
node="\\"v_out_p db20()\\""
color=4
dataset=0
unitx=1
logx=1
logy=0
divx=5
sweep=""
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=ac
x1=-7.2}
B 2 20 -360 570 -40 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7170486e-07
x2=3.0618868e-07




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-2.2403162
y2=0.9596838

color="12 7"
node="v_out_n
v_out_p"}
B 2 620 130 1170 380 {flags=graph,unlocked
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=ac
y1=215.78
y2=394.68
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.6
x2=8.4

subdivx=8
node=ph(v_out_p)
color=4
dataset=0
unitx=1
logx=1
logy=0
divx=5
sweep=""}
B 2 30 -750 580 -430 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=2e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-3
y2=7
rainbow=1
color="5 4"
node="v_in_p
v_in_n"
x1=0}
B 2 30 -1120 580 -800 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=8.9828681e-07




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3


y2=2
rainbow=1
color="11 5"
node="LO_N
LO_P"
x1=8.7834244e-07
y1=-2}
B 2 610 -360 1160 -40 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3658208e-07
x2=4.1917557e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-1.5385373
y2=1.1207932

color=12
node="\\"v_out_p v_out_n -\\""}
B 2 610 -1120 1160 -800 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=2.8478119e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3



rainbow=1
color=8
node="\\"i(Vtot) 1000 *\\""
x1=9.897281e-07
y1=0.43455643
y2=0.52045578}
B 2 610 -750 1160 -430 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=1.844838e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-5
y2=5
rainbow=1
color="7 11 21 13 17"
node="x1.net5
x1.net4
x1.net3
x1.net2
x1.net1"
x1=-1.5516198e-07}
T {Load sky 130 spice models} -430 50 0 0 0.4 0.4 {}
T {Anotate operating
point data (voltages,
currents) into the
schematic.} -430 290 0 0 0.4 0.4 {}
T {read raw file and load
waves into Xschem graphs} -430 190 0 0 0.4 0.4 {}
T {Gilbert Mixer} -570 -580 0 0 0.4 0.4 {}
T {Power Supply - 1.8V} -1110 -1140 0 0 0.4 0.4 {}
T {Local Oscillator square wave
1.8V, 50MHz, 100ps rise and fall time} -1100 -820 0 0 0.4 0.4 {}
T {Input signal sine wave
100mV 1MHz } -850 -400 0 1 0.4 0.4 {}
N -1110 -1080 -1080 -1080 {
lab=VCC}
N -980 -1080 -950 -1080 {
lab=VSS}
N -1080 -1020 -1080 -1010 {
lab=#net1}
N -950 -1020 -950 -1010 {
lab=GND}
N -540 -360 -510 -360 {
lab=VSS}
N -540 -390 -540 -360 {
lab=VSS}
N -540 -540 -500 -540 {
lab=VCC}
N -540 -540 -540 -510 {
lab=VCC}
N -1080 -330 -990 -330 {
lab=V_IN_P}
N -1080 -330 -1080 -300 {
lab=V_IN_P}
N -1080 -240 -1080 -230 {
lab=VSS}
N -1080 -230 -1040 -230 {
lab=VSS}
N -670 -440 -630 -440 {
lab=V_IN_P}
N -670 -420 -630 -420 {
lab=V_IN_N}
N -680 -480 -630 -480 {
lab=LO_P}
N -680 -460 -630 -460 {
lab=LO_N}
N -1080 -180 -990 -180 {
lab=V_IN_N}
N -1080 -180 -1080 -150 {
lab=V_IN_N}
N -1080 -90 -1080 -80 {
lab=VSS}
N -1080 -80 -1040 -80 {
lab=VSS}
N -1090 -610 -990 -610 {
lab=LO_N}
N -1090 -740 -990 -740 {
lab=LO_P}
N -1090 -510 -990 -510 {
lab=VSS}
N -1090 -530 -1090 -510 {
lab=VSS}
N -1090 -660 -1090 -640 {
lab=VSS}
N -1090 -640 -990 -640 {
lab=VSS}
N -1090 -740 -1090 -720 {
lab=LO_P}
N -1090 -610 -1090 -590 {
lab=LO_N}
N -330 -460 -270 -460 {
lab=V_OUT_P}
N -330 -440 -270 -440 {
lab=V_OUT_N}
C {devices/code.sym} -650 20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -610 350 0 0 {name=h15
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -610 210 0 0 {name=h17
descr="Load waves"
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/vsource.sym} -1080 -1050 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -1110 -1080 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} -1080 -950 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -950 -1050 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -980 -1080 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -950 -1010 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -510 -360 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -270 -440 0 0 {name=p7 lab=V_OUT_N}
C {devices/opin.sym} -270 -460 0 0 {name=p6 lab=V_OUT_P}
C {devices/lab_pin.sym} -500 -540 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {devices/simulator_commands_shown.sym} -1010 60 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  save all
  op
  remzerovec
  write gilbert_mixer_tb.raw
  set appendwrite
  *ac dec 10 1e3 100e6
  *remzerovec
  *write gilbert_mixer_tb.raw
  tran 1n 2u
  remzerovec
  write gilbert_mixer_tb.raw

.endc
"}
C {devices/vsource.sym} -1080 -270 0 1 {name=V4 value="0 ac 1 0
+ sin(0 100m 1meg 0 0 0)"
}
C {devices/lab_pin.sym} -990 -330 2 0 {name=p17 sig_type=std_logic lab=V_IN_P}
C {devices/lab_pin.sym} -1040 -230 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -990 -510 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {gilbert_mixer.sym} -480 -450 0 0 {name=x1}
C {devices/vsource.sym} -1090 -560 0 0 {name=V5 value="0 ac 1 0
+ pulse(0 1.8 2ns 100ps 100ps 10ns 20ns 400)"
}
C {devices/lab_pin.sym} -990 -740 2 0 {name=p20 sig_type=std_logic lab=LO_P}
C {devices/lab_pin.sym} -990 -610 2 0 {name=p21 sig_type=std_logic lab=LO_N}
C {devices/lab_pin.sym} -680 -480 2 1 {name=p22 sig_type=std_logic lab=LO_P}
C {devices/lab_pin.sym} -680 -460 2 1 {name=p23 sig_type=std_logic lab=LO_N}
C {devices/vsource.sym} -1080 -120 0 1 {name=V3 value="0 ac 1 0
+ sin(0 100m 1meg 0 0 180)"
}
C {devices/lab_pin.sym} -990 -180 2 0 {name=p18 sig_type=std_logic lab=V_IN_N}
C {devices/lab_pin.sym} -1040 -80 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} -1080 -980 2 1 {name=Vtot savecurrent=true}
C {devices/lab_pin.sym} -990 -640 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1090 -690 0 0 {name=V6 value="0 ac 1 0
+ pulse(1.8 0 2ns 100ps 100ps 10ns 20ns 400"
}
C {devices/lab_pin.sym} -670 -440 2 1 {name=p3 sig_type=std_logic lab=V_IN_P}
C {devices/lab_pin.sym} -670 -420 2 1 {name=p4 sig_type=std_logic lab=V_IN_N}
