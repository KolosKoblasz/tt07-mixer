v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 10 -80 110 {
lab=IN}
N -120 60 -80 60 {
lab=IN}
N -50 155 -40 155 {
lab=VSS}
N -40 140 -40 155 {
lab=VSS}
N -40 40 -40 80 {
lab=OUT}
N -45 -60 -40 -20 {
lab=VDD}
N -40 65 195 65 {
lab=OUT}
N -40 10 35 10 {
lab=VDD}
N -45 -60 35 -45 {
lab=VDD}
N 35 -55 35 10 {
lab=VDD}
N -40 110 0 110 {
lab=VSS}
N -0 110 0 155 {
lab=VSS}
N -40 155 0 155 {
lab=VSS}
C {devices/iopin.sym} -60 -105 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 85 -105 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -60 10 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -60 110 0 0 {name=M2
L=0.15
W=1
nf=1 
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
C {devices/opin.sym} 195 65 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} -120 60 0 0 {name=p4 lab=IN}
C {devices/lab_pin.sym} -45 -60 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -50 155 0 0 {name=p6 sig_type=std_logic lab=VSS}
