v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 890 -810 1440 -490 {flags=graph,unlocked


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
rawfile=$netlist_dir/fet_tb.raw
sim_type=tran
subdivx=3



rainbow=1
color=8
node="\\"i(Vdrain) 1000 *\\""
x1=0
y1=-1
y2=0.5}
B 2 60 -330 860 70 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
T {Load sky 130 spice models} -290 260 0 0 0.4 0.4 {}
T {Anotate operating
point data (voltages,
currents) into the 
schematic.} -290 500 0 0 0.4 0.4 {}
T {read raw file and load
waves into Xschem graphs} -290 400 0 0 0.4 0.4 {}
N -530 -190 -500 -190 {
lab=G}
N -460 -160 -460 -120 {
lab=S}
N -460 -270 -460 -220 {
lab=#net1}
N -460 -190 -340 -190 {
lab=S}
N -460 -390 -460 -330 {
lab=D}
C {sky130_fd_pr/nfet_01v8.sym} -480 -190 0 0 {name=M1
L=0.38
W=3.6
nf=2 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/code.sym} -630 220 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -590 550 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -590 410 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/simulator_commands_shown.sym} -980 260 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
vd D 0 1.8
vg G 0 0
vs S 0 0
.options savecurrents
.control
save all
dc vg 0 1.8 0.1
*dc temp -40 140 1
write fet_tb.raw
.endc

"}
C {devices/lab_pin.sym} -460 -120 0 0 {name=p1 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} -460 -390 2 1 {name=p2 sig_type=std_logic lab=D}
C {devices/ipin.sym} -720 -260 0 0 {name=p45 lab=D}
C {devices/ipin.sym} -720 -220 0 0 {name=p46 lab=G}
C {devices/ipin.sym} -720 -180 0 0 {name=p47 lab=S}
C {devices/lab_pin.sym} -340 -190 0 1 {name=p3 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} -530 -190 0 0 {name=p4 sig_type=std_logic lab=G}
C {devices/ammeter.sym} -460 -300 0 0 {name=Vdrain}
