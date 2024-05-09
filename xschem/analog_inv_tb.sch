v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -420 -1660 130 -1410 {flags=graph,unlocked
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
B 2 -420 -2230 130 -1910 {flags=graph,unlocked


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
rawfile=$netlist_dir/analog_inv_tb.raw
sim_type=tran
subdivx=3

y1=-2
y2=+2

color="12 7"
node="v_out_a_p"}
B 2 -420 -1910 130 -1660 {flags=graph,unlocked
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
B 2 -410 -2620 140 -2300 {flags=graph,unlocked


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
rawfile=$netlist_dir/analog_inv_tb.raw
sim_type=tran
subdivx=3

y1=-2
y2=+2
rainbow=1
color="11 5"
node="v_in_a_p"
x1=2.0837827e-06}
T {Load sky 130 spice models} -760 -1290 0 0 0.4 0.4 {}
T {Anotate operating
point data (voltages,
currents) into the 
schematic.} -760 -1050 0 0 0.4 0.4 {}
T {read raw file and load
waves into Xschem graphs} -760 -1150 0 0 0.4 0.4 {}
T {A: Differential Input, Differential Output} -1210 -1990 0 0 0.4 0.4 {}
N -1510 -2030 -1480 -2030 {
lab=VCC}
N -1380 -2030 -1350 -2030 {
lab=VSS}
N -1480 -1970 -1480 -1960 {
lab=GND}
N -1350 -1970 -1350 -1960 {
lab=GND}
N -960 -1830 -960 -1820 {
lab=V_OUT_A_P}
N -1040 -1900 -1000 -1900 {
lab=VCC}
N -1040 -1900 -1040 -1870 {
lab=VCC}
N -1810 -1860 -1720 -1860 {
lab=V_IN_A_P}
N -1720 -1860 -1720 -1830 {
lab=V_IN_A_P}
N -1720 -1770 -1720 -1760 {
lab=VSS}
N -1390 -1840 -1360 -1840 {
lab=V_IN_A_P}
N -1230 -1840 -1140 -1840 {
lab=#net1}
N -960 -1830 -630 -1830 {
lab=V_OUT_A_P}
N -1260 -1930 -1230 -1930 {
lab=VSS}
N -1230 -1930 -1230 -1900 {
lab=VSS}
N -1270 -1840 -1230 -1840 {
lab=#net1}
N -1360 -1840 -1330 -1840 {
lab=V_IN_A_P}
N -1140 -1840 -1110 -1840 {
lab=#net1}
N -1110 -1840 -1110 -1820 {
lab=#net1}
N -1760 -1760 -1720 -1760 {
lab=VSS}
N -1040 -1770 -1040 -1740 {
lab=VSS}
C {devices/code.sym} -1100 -1330 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -1060 -1000 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -1060 -1140 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/vsource.sym} -1480 -2000 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -1510 -2030 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/gnd.sym} -1480 -1960 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1350 -2000 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -1380 -2030 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -1350 -1960 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} -1390 -1840 0 0 {name=p4 lab=V_IN_A_P}
C {devices/opin.sym} -630 -1830 0 0 {name=p6 lab=V_OUT_A_P}
C {devices/lab_pin.sym} -1000 -1900 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {devices/simulator_commands_shown.sym} -1450 -1290 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  save all
  op
  remzerovec
  write analog_inv_tb.raw
  set appendwrite
  *ac dec 10 1e3 100e6
  *remzerovec
  *write analog_inv_tb.raw
  tran 100n 5u
  write analog_inv_tb.raw

.endc
"}
C {devices/vsource.sym} -1720 -1800 0 0 {name=V4 value="0 ac 1 0
+ sin(900m 900m 1meg 0 0 0)"
}
C {devices/lab_pin.sym} -1810 -1860 2 1 {name=p17 sig_type=std_logic lab=V_IN_A_P}
C {devices/lab_pin.sym} -1760 -1760 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/res.sym} -1300 -1840 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -1230 -1870 2 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -1260 -1930 2 1 {name=p12 sig_type=std_logic lab=VSS}
C {analog_inv.sym} -1130 -1820 0 0 {name=x1}
C {devices/lab_pin.sym} -1040 -1740 2 1 {name=p3 sig_type=std_logic lab=VSS}
