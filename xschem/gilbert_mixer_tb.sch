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
x1=0
x2=0.0004




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-3.5049272
y2=3.5398927

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

x2=0.0004




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=0.64555477
y2=1.3289731
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

x2=0.00043535239




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
x1=0.00015916191
y1=-2}
B 2 610 -360 1160 -40 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00016122015
x2=0.0001910388




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-0.9846475
y2=2.3503925

color=12
node="\\"v_out_p v_out_n -\\""}
B 2 610 -1120 1160 -800 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=0.00042350578




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
x1=-0.00011456365
y1=0.58043877
y2=0.62347133}
B 2 610 -750 1160 -430 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=2.144838e-06




dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/gilbert_mixer_tb.raw
sim_type=tran
subdivx=3

y1=-15
y2=-5
rainbow=1
color="7 11 21 13 17"
node="x1.net5
x1.net4
x1.net3
x1.net2
x1.net1"
x1=1.4483802e-07}
T {Load sky 130 spice models} -430 50 0 0 0.4 0.4 {}
T {Anotate operating
point data (voltages,
currents) into the
schematic.} -430 290 0 0 0.4 0.4 {}
T {read raw file and load
waves into Xschem graphs} -430 190 0 0 0.4 0.4 {}
T {Gilbert Mixer} -970 -590 0 0 0.4 0.4 {}
T {Power Supply - 1.8V} -1510 -1150 0 0 0.4 0.4 {}
T {Local Oscillator square wave
1.8V, 1MHz, 100ps rise and fall time} -1500 -830 0 0 0.4 0.4 {}
T {Input signal sine wave
100mV 10KHz } -1240 -440 0 1 0.4 0.4 {}
N -1510 -1090 -1480 -1090 {
lab=VCC}
N -1380 -1090 -1350 -1090 {
lab=VSS}
N -1480 -1030 -1480 -1020 {
lab=#net1}
N -1350 -1030 -1350 -1020 {
lab=GND}
N -940 -370 -910 -370 {
lab=VSS}
N -940 -400 -940 -370 {
lab=VSS}
N -940 -550 -900 -550 {
lab=VCC}
N -940 -550 -940 -520 {
lab=VCC}
N -1480 -340 -1390 -340 {
lab=#net2}
N -1480 -340 -1480 -310 {
lab=#net2}
N -1480 -250 -1480 -240 {
lab=VSS}
N -1480 -240 -1440 -240 {
lab=VSS}
N -1070 -450 -1030 -450 {
lab=V_IN_P}
N -1070 -430 -1030 -430 {
lab=V_IN_N}
N -1080 -490 -1030 -490 {
lab=LO_P}
N -1080 -470 -1030 -470 {
lab=LO_N}
N -1480 -190 -1390 -190 {
lab=#net3}
N -1480 -190 -1480 -160 {
lab=#net3}
N -1480 -100 -1480 -90 {
lab=VSS}
N -1480 -90 -1440 -90 {
lab=VSS}
N -1490 -620 -1390 -620 {
lab=LO_N}
N -1490 -750 -1390 -750 {
lab=LO_P}
N -1490 -520 -1390 -520 {
lab=VSS}
N -1490 -540 -1490 -520 {
lab=VSS}
N -1490 -670 -1490 -650 {
lab=VSS}
N -1490 -650 -1390 -650 {
lab=VSS}
N -1490 -750 -1490 -730 {
lab=LO_P}
N -1490 -620 -1490 -600 {
lab=LO_N}
N -730 -470 -670 -470 {
lab=#net4}
N -730 -450 -670 -450 {
lab=#net5}
N -1260 -190 -1230 -190 {
lab=V_IN_N}
N -1300 -130 -1300 -90 {
lab=VSS}
N -1260 -340 -1230 -340 {
lab=V_IN_P}
N -1300 -280 -1300 -240 {
lab=VSS}
N -640 -410 -550 -410 {
lab=#net5}
N -640 -510 -550 -510 {
lab=#net4}
N -610 -610 -610 -570 {
lab=VSS}
N -610 -350 -610 -310 {
lab=VSS}
N -670 -470 -640 -470 {
lab=#net4}
N -640 -510 -640 -470 {
lab=#net4}
N -670 -450 -640 -450 {
lab=#net5}
N -640 -450 -640 -410 {
lab=#net5}
N -1330 -340 -1260 -340 {
lab=V_IN_P}
N -1330 -190 -1260 -190 {
lab=V_IN_N}
N -490 -510 -460 -510 {
lab=#net6}
N -400 -510 -360 -510 {
lab=V_OUT_P}
N -490 -410 -460 -410 {
lab=#net7}
N -400 -410 -360 -410 {
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
C {devices/vsource.sym} -1480 -1060 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -1510 -1090 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} -1480 -960 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1350 -1060 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -1380 -1090 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -1350 -1020 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -910 -370 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -360 -410 0 0 {name=p7 lab=V_OUT_N}
C {devices/opin.sym} -360 -510 0 0 {name=p6 lab=V_OUT_P}
C {devices/lab_pin.sym} -900 -550 0 1 {name=p16 sig_type=std_logic lab=VCC}
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
  tran 100n 400u
  remzerovec
  write gilbert_mixer_tb.raw

.endc
"}
C {devices/vsource.sym} -1480 -280 0 1 {name=V4 value="0 ac 1 0
+ sin(950m 100m 10k 0 0 0)"
}
C {devices/lab_pin.sym} -1230 -340 2 0 {name=p17 sig_type=std_logic lab=V_IN_P}
C {devices/lab_pin.sym} -1440 -240 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1390 -520 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {gilbert_mixer.sym} -880 -460 0 0 {name=x1}
C {devices/vsource.sym} -1490 -570 0 0 {name=V5 value="0 ac 1 0
+ pulse(0 1.8 2ns 100ps 100ps 500ns 1us 400)"
}
C {devices/lab_pin.sym} -1390 -750 2 0 {name=p20 sig_type=std_logic lab=LO_P}
C {devices/lab_pin.sym} -1390 -620 2 0 {name=p21 sig_type=std_logic lab=LO_N}
C {devices/lab_pin.sym} -1080 -490 2 1 {name=p22 sig_type=std_logic lab=LO_P}
C {devices/lab_pin.sym} -1080 -470 2 1 {name=p23 sig_type=std_logic lab=LO_N}
C {devices/vsource.sym} -1480 -130 0 1 {name=V3 value="0 ac 1 0
+ sin(950M 100m 10k 0 0 180)"
}
C {devices/lab_pin.sym} -1230 -190 2 0 {name=p18 sig_type=std_logic lab=V_IN_N}
C {devices/lab_pin.sym} -1440 -90 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} -1480 -990 2 1 {name=Vtot savecurrent=true}
C {devices/lab_pin.sym} -1390 -650 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1490 -700 0 0 {name=V6 value="0 ac 1 0
+ pulse(1.8 0 2ns 100ps 100ps 500ns 1us 400"
}
C {devices/lab_pin.sym} -1070 -450 2 1 {name=p3 sig_type=std_logic lab=V_IN_P}
C {devices/lab_pin.sym} -1070 -430 2 1 {name=p4 sig_type=std_logic lab=V_IN_N}
C {devices/res.sym} -1360 -190 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -1300 -90 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/res.sym} -1360 -340 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -1300 -240 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/res.sym} -520 -510 1 1 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -610 -610 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/res.sym} -520 -410 1 0 {name=R4
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -610 -310 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -1300 -310 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -1300 -160 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -610 -380 0 0 {name=C5
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -610 -540 2 1 {name=C6
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -430 -510 3 0 {name=C7
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -430 -410 3 0 {name=C8
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
