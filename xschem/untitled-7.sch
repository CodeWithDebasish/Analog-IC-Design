v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 0 -230 360 20 {}
L 4 0 -230 0 230 {}
L 4 0 230 360 20 {}
L 7 -20 -110 0 -110 {}
L 7 360 20 380 20 {}
L 7 170 130 170 150 {}
L 7 -20 90 0 90 {}
L 7 70 -200 70 -180 {}
L 7 160 -140 160 -120 {}
B 5 -2.5 -112.5 2.5 -107.5 {name=vim dir=inout}
B 5 357.5 17.5 362.5 22.5 {name=vout
 dir=inout}
B 5 167.5 127.5 172.5 132.5 {name=AVSS dir=inout}
B 5 -2.5 87.5 2.5 92.5 {name=vip dir=inout}
B 5 67.5 -202.5 72.5 -197.5 {name=vip dir=inout}
B 5 157.5 -142.5 162.5 -137.5 {name=vip dir=inout}
T {@symname} 55 -6 0 0 0.3 0.3 {}
T {@name} 235 -82 0 0 0.2 0.2 {}
T {vim} 35 -124 0 1 0.2 0.2 {}
T {vout
} 315 34 2 1 0.2 0.2 {}
T {AVSS} 166 155 3 1 0.2 0.2 {}
T {vip} 25 86 0 1 0.2 0.2 {}
T {AVDD} 66 -175 3 1 0.2 0.2 {}
T {Ib5u} 156 -115 3 1 0.2 0.2 {}
N 1190 -310 1190 -240 {lab=ib5u}
N 1000 -310 1190 -310 {lab=ib5u}
N 1000 -90 1190 -90 {lab=AVSS}
N 1080 -210 1190 -210 {lab=AVSS}
N 1080 -210 1080 -90 {lab=AVSS}
N 1190 -180 1190 -90 {lab=AVSS}
N 1230 -210 1330 -210 {lab=ib5u}
N 1190 -310 1260 -310 {lab=ib5u}
N 1260 -310 1260 -210 {lab=ib5u}
N 1370 -180 1370 -100 {lab=AVSS}
N 1190 -90 1370 -90 {lab=AVSS}
N 1370 -100 1370 -90 {lab=AVSS}
N 1370 -310 1370 -240 {lab=vim}
N 1370 -210 1470 -210 {lab=AVSS}
N 1470 -210 1470 -90 {lab=AVSS}
N 1370 -90 1470 -90 {lab=AVSS}
N 1370 -410 1370 -310 {lab=vim}
N 1230 -410 1370 -410 {lab=vim}
N 1370 -410 1500 -410 {lab=vim}
N 1230 -500 1230 -410 {lab=vim}
N 1500 -500 1500 -410 {lab=vim}
N 1020 -500 1230 -500 {lab=vim}
N 1500 -500 1680 -500 {lab=vim}
N 1270 -670 1270 -530 {lab=vom}
N 1460 -670 1460 -530 {lab=#net1}
N 1270 -730 1270 -670 {lab=vom}
N 1310 -760 1390 -760 {lab=vom}
N 1270 -670 1310 -670 {lab=vom}
N 1310 -670 1340 -670 {lab=vom}
N 1340 -760 1340 -670 {lab=vom}
N 1460 -730 1460 -670 {lab=#net1}
N 1390 -760 1420 -760 {lab=vom}
N 1460 -760 1550 -760 {lab=#net2}
N 1550 -890 1550 -760 {lab=#net2}
N 940 -890 1550 -890 {lab=#net2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1350 -210 0 0 {name=Mtail
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -210 0 1 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 1000 -310 2 0 {name=p1 lab=ib5u}
C {iopin.sym} 1000 -90 2 0 {name=p2 lab=AVSS}
C {sky130_fd_pr/nfet_01v8.sym} 1250 -500 0 0 {name=Mip
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1480 -500 0 1 {name=M3
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 1680 -500 0 0 {name=p3 lab=vim}
C {iopin.sym} 1020 -500 2 0 {name=p4 lab=vip}
C {sky130_fd_pr/pfet_01v8.sym} 1290 -760 0 1 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -760 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 1270 -610 0 0 {name=p5 sig_type=std_logic lab=vom}
C {iopin.sym} 940 -890 2 0 {name=p6 lab=AVDD}
