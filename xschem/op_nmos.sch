v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
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
N 1370 -310 1370 -240 {lab=#net1}
N 1370 -210 1470 -210 {lab=AVSS}
N 1470 -210 1470 -90 {lab=AVSS}
N 1370 -90 1470 -90 {lab=AVSS}
N 1370 -410 1370 -310 {lab=#net1}
N 1020 -500 1230 -500 {lab=vip}
N 1500 -500 1680 -500 {lab=vim}
N 1270 -670 1270 -530 {lab=vom}
N 1460 -670 1460 -530 {lab=vout}
N 1270 -730 1270 -670 {lab=vom}
N 1310 -760 1390 -760 {lab=vom}
N 1270 -670 1310 -670 {lab=vom}
N 1310 -670 1340 -670 {lab=vom}
N 1340 -760 1340 -670 {lab=vom}
N 1460 -730 1460 -670 {lab=vout}
N 1390 -760 1420 -760 {lab=vom}
N 1460 -760 1550 -760 {lab=AVDD}
N 1550 -890 1550 -760 {lab=AVDD}
N 940 -890 1550 -890 {lab=AVDD}
N 1270 -890 1270 -790 {lab=AVDD}
N 1050 -760 1270 -760 {lab=AVDD}
N 1050 -890 1050 -760 {lab=AVDD}
N 1460 -630 1650 -630 {lab=vout}
N 1270 -410 1370 -410 {lab=#net1}
N 1270 -470 1270 -410 {lab=#net1}
N 1460 -470 1460 -410 {lab=#net1}
N 1370 -410 1460 -410 {lab=#net1}
N 1270 -500 1350 -500 {lab=#net1}
N 1350 -500 1350 -410 {lab=#net1}
N 1400 -500 1460 -500 {lab=#net1}
N 1400 -500 1400 -410 {lab=#net1}
N 1460 -890 1460 -790 {lab=AVDD}
N 1270 -790 1280 -790 {lab=AVDD}
N 1270 -730 1280 -730 {lab=vom}
N 1270 -760 1280 -760 {lab=AVDD}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -210 0 1 {name=M1
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 1000 -310 2 0 {name=p1 lab=ib5u}
C {iopin.sym} 1000 -90 2 0 {name=p2 lab=AVSS}
C {iopin.sym} 1680 -500 0 0 {name=p3 lab=vim}
C {iopin.sym} 1020 -500 2 0 {name=p4 lab=vip}
C {lab_wire.sym} 1270 -610 0 0 {name=p5 sig_type=std_logic lab=vom}
C {iopin.sym} 940 -890 2 0 {name=p6 lab=AVDD}
C {iopin.sym} 1650 -630 0 0 {name=p7 lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} 1350 -210 0 0 {name=Mtail
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1250 -500 0 0 {name=Mip
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1480 -500 0 1 {name=Mim
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 560 -700 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1300 -760 0 1 {name=Mpcmp
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1440 -760 0 0 {name=Mpcmm
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
