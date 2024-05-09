v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -430 860 -430 {
lab=VX}
N 620 -600 620 -520 {
lab=OUT_P}
N 620 -690 620 -670 {
lab=VDD}
N 660 -630 820 -630 {
lab=OUT_P}
N 620 -580 690 -580 {
lab=OUT_P}
N 690 -580 740 -580 {
lab=OUT_P}
N 740 -630 740 -580 {
lab=OUT_P}
N 740 -300 740 -270 {
lab=VSS}
N 740 -270 740 -250 {
lab=VSS}
N 450 -330 700 -330 {
lab=#net1}
N 470 -390 470 -330 {
lab=#net1}
N 410 -390 470 -390 {
lab=#net1}
N 620 -730 620 -690 {
lab=VDD}
N 410 -300 410 -250 {
lab=VSS}
N 350 -330 410 -330 {
lab=VSS}
N 740 -330 800 -330 {
lab=VSS}
N 620 -480 680 -480 {
lab=VSS}
N 800 -480 860 -480 {
lab=VSS}
N 620 -520 620 -510 {
lab=OUT_P}
N 620 -450 620 -430 {
lab=VX}
N 860 -450 860 -430 {
lab=VX}
N 860 -600 860 -510 {
lab=OUT_N}
N 620 -670 620 -660 {
lab=VDD}
N 860 -730 860 -660 {
lab=VDD}
N 560 -630 620 -630 {
lab=VDD}
N 860 -630 920 -630 {
lab=VDD}
N 620 -730 860 -730 {
lab=VDD}
N 740 -750 740 -730 {
lab=VDD}
N 410 -730 410 -700 {
lab=VDD}
N 410 -750 410 -730 {
lab=VDD}
N 680 -480 800 -480 {
lab=VSS}
N 410 -640 410 -360 {
lab=#net1}
N 550 -540 620 -540 {
lab=OUT_P}
N 530 -480 580 -480 {
lab=IN_P}
N 860 -540 930 -540 {
lab=OUT_N}
N 900 -480 950 -480 {
lab=IN_N}
N 360 -670 390 -670 {
lab=VSS}
N 740 -430 740 -360 {
lab=VX}
C {sky130_fd_pr/nfet_01v8.sym} 430 -330 0 1 {name=M6
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
C {devices/lab_pin.sym} 560 -630 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -630 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -750 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -750 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -430 1 0 {name=p2 sig_type=std_logic lab=VX}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 640 -630 0 1 {name=M4
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
C {devices/iopin.sym} 580 -860 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} 580 -830 0 0 {name=p18 lab=VSS}
C {devices/lab_pin.sym} 360 -670 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -250 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -250 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -330 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -480 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 950 -480 2 0 {name=p16 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 530 -480 0 0 {name=p17 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 800 -330 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -540 2 1 {name=p21 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 930 -540 2 0 {name=p1 sig_type=std_logic lab=OUT_N}
C {devices/ipin.sym} 300 -540 0 0 {name=p5 lab=IN_N}
C {devices/ipin.sym} 300 -510 0 0 {name=p8 lab=IN_P}
C {devices/opin.sym} 1060 -540 0 0 {name=p14 lab=OUT_P}
C {devices/opin.sym} 1060 -510 0 0 {name=p20 lab=OUT_N}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} 410 -670 0 0 {name=R2
L=1.85
model=res_xhigh_po_2p85
spiceprefix=X
mult=10}
C {sky130_fd_pr/nfet_01v8.sym} 720 -330 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -480 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 880 -480 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 840 -630 0 0 {name=M5
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
