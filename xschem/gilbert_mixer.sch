v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -90 -60 -90 {
lab=IN_P}
N 110 -90 160 -90 {
lab=VSS}
N -20 -90 30 -90 {
lab=VSS}
N -20 -200 -20 -120 {
lab=OUT_P}
N 80 30 130 30 {
lab=VSS}
N -20 -60 160 -60 {
lab=NET_M5_DRAIN}
N 80 -60 80 0 {
lab=NET_M5_DRAIN}
N 470 -90 520 -90 {
lab=VSS}
N 340 -90 390 -90 {
lab=VSS}
N 340 -200 340 -120 {
lab=OUT_N}
N 390 30 440 30 {
lab=VSS}
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
lab=#net1}
N 300 -230 320 -230 {
lab=VSS}
N -130 30 -90 30 {
lab=LO_P}
N 480 30 630 30 {
lab=LO_N}
N -90 30 40 30 {
lab=LO_P}
N 560 -90 630 -90 {
lab=IN_N}
N -130 -180 -60 -180 {
lab=OUT_P}
N 560 -180 630 -180 {
lab=OUT_N}
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
N 220 110 240 110 {
lab=#net2}
N 440 -10 480 -10 {
lab=NET_M6_DRAIN}
N 40 -10 80 -10 {
lab=NET_M5_DRAIN}
C {devices/iopin.sym} 10 -345 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 135 -345 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -130 30 0 0 {name=p4 lab=LO_P}
C {devices/lab_pin.sym} 115 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 25 -90 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 125 30 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 475 -90 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 385 -90 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 395 30 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 260 110 0 0 {name=R3
L=0.1
model=res_high_po_0p35
spiceprefix=X
mult=30}
C {devices/lab_pin.sym} 265 160 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -65 -230 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 305 -230 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 630 30 0 1 {name=p15 lab=LO_N}
C {devices/ipin.sym} -130 -90 0 0 {name=p16 lab=IN_P}
C {devices/ipin.sym} 630 -90 0 1 {name=p17 lab=IN_N}
C {devices/lab_pin.sym} 175 -280 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 215 110 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 630 -180 0 0 {name=p3 lab=OUT_N}
C {devices/opin.sym} -130 -180 0 1 {name=p5 lab=OUT_P}
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
C {sky130_fd_pr/res_high_po_0p35.sym} 340 -230 0 0 {name=R1
L=15.3
model=res_high_po_0p35
spiceprefix=X
mult=2}
C {devices/lab_pin.sym} 260 60 1 0 {name=p18 sig_type=std_logic lab=NET_R3}
C {devices/lab_pin.sym} 480 -10 2 0 {name=p21 sig_type=std_logic lab=NET_M6_DRAIN}
C {devices/lab_pin.sym} 40 -10 2 1 {name=p22 sig_type=std_logic lab=NET_M5_DRAIN}
C {sky130_fd_pr/res_high_po_0p35.sym} -20 -230 0 0 {name=R2
L=15.3
model=res_high_po_0p35
spiceprefix=X
mult=2}
