v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -10 -40 -10 {
lab=IN}
N 0 20 0 40 {
lab=VSS}
N 0 -130 0 -40 {
lab=OUT}
N 0 -80 70 -80 {
lab=OUT}
N 0 -10 50 -10 {
lab=VSS}
N -140 -80 -100 -80 {
lab=IN}
N -0 -210 0 -190 {
lab=VDD}
N -100 -80 -100 -10 {
lab=IN}
N -0 -160 50 -160 {
lab=VDD}
N -100 -160 -40 -160 {
lab=IN}
N -100 -160 -100 -80 {
lab=IN}
C {devices/lab_pin.sym} 50 -10 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -20 -10 0 0 {name=M2
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
C {devices/iopin.sym} 0 -210 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} 0 40 0 0 {name=p18 lab=VSS}
C {devices/ipin.sym} -140 -80 0 0 {name=p5 lab=IN}
C {devices/opin.sym} 70 -80 0 0 {name=p14 lab=OUT}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -160 0 0 {name=M5
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 50 -160 2 0 {name=p2 sig_type=std_logic lab=VDD}
