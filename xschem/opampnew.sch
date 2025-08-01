v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -400 490 -400 {lab=Ib5u}
N -660 -180 -650 -180 {lab=vim}
N -30 -320 -10 -320 {lab=vop}
N -30 -190 -10 -190 {lab=vom}
N -170 110 -70 110 {lab=vin}
N -170 150 -70 150 {lab=vim}
N -30 60 -30 100 {lab=vip}
N -30 60 60 60 {lab=vip}
N -30 160 -30 200 {lab=GND}
N -30 200 60 200 {lab=GND}
N 60 60 150 60 {lab=vip}
N 210 60 250 60 {lab=vop}
N 250 60 250 100 {lab=vop}
N 250 160 250 200 {lab=GND}
N 60 200 250 200 {lab=GND}
N 250 60 350 60 {lab=vop}
N 350 60 350 100 {lab=vop}
N 350 100 410 100 {lab=vop}
N 250 200 350 200 {lab=GND}
N 350 160 350 200 {lab=GND}
N 350 160 410 160 {lab=GND}
N -170 60 -170 110 {lab=vin}
N -180 60 -170 60 {lab=vin}
N -170 150 -170 200 {lab=vim}
N -180 200 -170 200 {lab=vim}
N 450 60 450 110 {lab=vop}
N 450 60 470 60 {lab=vop}
N 450 150 450 190 {lab=vom}
N 450 190 470 190 {lab=vom}
N 680 -400 680 -330 {lab=Ib5u}
N 490 -400 680 -400 {lab=Ib5u}
N 570 -300 680 -300 {lab=GND}
N 570 -300 570 -180 {lab=GND}
N 680 -270 680 -180 {lab=GND}
N 720 -300 820 -300 {lab=Ib5u}
N 680 -400 750 -400 {lab=Ib5u}
N 750 -400 750 -300 {lab=Ib5u}
N 860 -270 860 -190 {lab=GND}
N 680 -180 860 -180 {lab=GND}
N 860 -190 860 -180 {lab=GND}
N 860 -400 860 -330 {lab=#net1}
N 860 -300 960 -300 {lab=GND}
N 960 -300 960 -180 {lab=GND}
N 860 -180 960 -180 {lab=GND}
N 570 -180 680 -180 {lab=GND}
N 490 -180 570 -180 {lab=GND}
C {iopin.sym} -660 -180 2 0 {name=p5 lab=vim}
C {iopin.sym} 360 -390 2 0 {name=p6 lab=vin}
C {iopin.sym} -10 -190 0 0 {name=p7 lab=vom}
C {iopin.sym} -10 -320 0 0 {name=p8 lab=vop}
C {iopin.sym} -370 -370 2 0 {name=p1 lab=AVDD}
C {iopin.sym} -360 -180 2 0 {name=p2 lab=AVSS}
C {vcvs.sym} -30 130 0 0 {name=E1 value=1000}
C {vcvs.sym} 410 130 2 0 {name=E2 value=1}
C {iopin.sym} -180 200 2 0 {name=p3 lab=vim}
C {iopin.sym} -180 60 2 0 {name=p4 lab=vin}
C {iopin.sym} 470 190 0 0 {name=p9 lab=vom}
C {iopin.sym} 470 60 0 0 {name=p10 lab=vop}
C {res.sym} 180 60 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 250 130 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 250 200 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 70 60 0 0 {name=p11 sig_type=std_logic lab=vip}
C {lab_wire.sym} 230 60 0 1 {name=p12 sig_type=std_logic lab=vop}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 840 -300 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 700 -300 0 1 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 680 -180 0 0 {name=l2 lab=GND}
C {iopin.sym} 480 -400 2 0 {name=p13 lab=Ib5u}
