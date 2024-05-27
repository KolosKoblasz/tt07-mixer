v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Aproximately 960mV 
Gate bias is needed} 720 -250 0 0 0.4 0.4 {}
T {Power Supply - 1.8V} 150 -450 0 0 0.4 0.4 {}
T {Aproximately 950mV 
Gate bias is needed} -270 -250 0 1 0.4 0.4 {}
T {IN_P/N ports expect the RF or IF signal
depending on if the circuit is used for DOWN or UP conversion.

The LO_P and LO_N signals expect the Local Oscillator 
square wave signal.} 20 -520 0 1 0.4 0.4 {}
N -20 -200 -20 -120 {
lab=OUT_P}
N -20 -60 160 -60 {
lab=NET_M5_DRAIN}
N 80 -60 80 0 {
lab=NET_M5_DRAIN}
N 470 -90 520 -90 {
lab=VSS}
N 340 -200 340 -120 {
lab=OUT_N}
N 340 -60 520 -60 {
lab=NET_M6_DRAIN}
N 440 -60 440 0 {
lab=NET_M6_DRAIN}
N 520 -140 520 -120 {
lab=OUT_P}
N 280 -140 520 -140 {
lab=OUT_P}
N 240 -180 280 -140 {
lab=OUT_P}
N -20 -180 240 -180 {
lab=OUT_P}
N 160 -140 160 -120 {
lab=OUT_N}
N 160 -140 240 -140 {
lab=OUT_N}
N 240 -140 280 -180 {
lab=OUT_N}
N 280 -180 340 -180 {
lab=OUT_N}
N 290 -30 560 -30 {
lab=IN_N}
N 560 -90 560 -30 {
lab=IN_N}
N -60 -30 210 -30 {
lab=IN_P}
N -60 -90 -60 -30 {
lab=IN_P}
N 200 -90 220 -90 {
lab=IN_N}
N 230 -30 280 -90 {
lab=IN_P}
N 210 -30 230 -30 {
lab=IN_P}
N 280 -90 300 -90 {
lab=IN_P}
N 220 -90 280 -30 {
lab=IN_N}
N 280 -30 290 -30 {
lab=IN_N}
N 80 60 440 60 {
lab=NET_R3}
N 260 60 260 80 {
lab=NET_R3}
N 260 140 260 160 {
lab=VSS}
N 260 160 270 160 {
lab=VSS}
N -60 -230 -40 -230 {
lab=VSS}
N 300 -230 320 -230 {
lab=VSS}
N -130 30 -90 30 {
lab=LO_P}
N -90 30 40 30 {
lab=LO_P}
N 560 -90 630 -90 {
lab=IN_N}
N -130 -180 -60 -180 {
lab=OUT_P}
N -60 -180 -20 -180 {
lab=OUT_P}
N 340 -180 560 -180 {
lab=OUT_N}
N -20 -260 340 -260 {
lab=VDD}
N 160 -280 160 -260 {
lab=VDD}
N 160 -280 180 -280 {
lab=VDD}
N 440 -10 480 -10 {
lab=NET_M6_DRAIN}
N 40 -10 80 -10 {
lab=NET_M5_DRAIN}
N -20 -90 30 -90 {
lab=VSS}
N 120 -90 160 -90 {
lab=VSS}
N 340 -90 380 -90 {
lab=VSS}
N 80 30 120 30 {
lab=VSS}
N 400 30 440 30 {
lab=VSS}
N 630 -90 810 -90 {
lab=IN_N}
N 480 30 560 30 {
lab=LO_N}
N 810 -90 1000 -90 {
lab=IN_N}
N -550 -90 -360 -90 {
lab=IN_P}
N -360 -90 -60 -90 {
lab=IN_P}
N -220 -180 -190 -180 {
lab=OUT_P}
N -220 -260 -220 -180 {
lab=OUT_P}
N 620 -260 620 -180 {
lab=OUT_N}
N 1000 -90 1060 -90 {
lab=IN_N}
N -610 -90 -550 -90 {
lab=IN_P}
N -190 -180 -130 -180 {
lab=OUT_P}
N 560 -180 620 -180 {
lab=OUT_N}
C {devices/ipin.sym} -130 30 0 0 {name=p4 lab=LO_P}
C {devices/ipin.sym} 560 30 0 1 {name=p15 lab=LO_N}
C {devices/ipin.sym} 1060 -90 0 1 {name=p17 lab=IN_N}
C {devices/opin.sym} 620 -260 3 0 {name=p3 lab=OUT_N}
C {devices/opin.sym} -220 -260 1 1 {name=p5 lab=OUT_P}
C {sky130_fd_pr/nfet_01v8.sym} 540 -90 0 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 180 -90 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 460 30 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -90 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -40 -90 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 60 30 0 0 {name=M5
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
C {devices/lab_pin.sym} 260 60 1 0 {name=p18 sig_type=std_logic lab=NET_R3}
C {devices/lab_pin.sym} 480 -10 2 0 {name=p21 sig_type=std_logic lab=NET_M6_DRAIN}
C {devices/lab_pin.sym} 40 -10 2 1 {name=p22 sig_type=std_logic lab=NET_M5_DRAIN}
C {devices/iopin.sym} 220 -390 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 220 -360 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 180 -280 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 -230 2 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 30 -90 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 -90 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -90 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -90 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 30 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 30 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -60 -230 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 160 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -610 -90 0 0 {name=p16 lab=IN_P}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 340 -230 0 0 {name=R1
L=1.35
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -20 -230 0 0 {name=R2
L=1.35
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 260 110 0 0 {name=R3
W=0.4
L=1
model=res_generic_l1
mult=1}
