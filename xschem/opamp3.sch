v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 50 110 50 {lab=vin}
N 10 90 110 90 {lab=vim}
N 150 0 150 40 {lab=#net1}
N 150 -0 240 0 {lab=#net1}
N 150 100 150 140 {lab=#net2}
N 150 140 240 140 {lab=#net2}
N 240 -0 330 -0 {lab=#net1}
N 390 -0 430 -0 {lab=#net3}
N 430 0 430 40 {lab=#net3}
N 430 100 430 140 {lab=#net2}
N 240 140 430 140 {lab=#net2}
N 430 -0 530 0 {lab=#net3}
N 530 0 530 40 {lab=#net3}
N 530 40 590 40 {lab=#net3}
N 430 140 530 140 {lab=#net2}
N 530 100 530 140 {lab=#net2}
N 530 100 590 100 {lab=#net2}
N 10 -0 10 50 {lab=vin}
N 0 -0 10 -0 {lab=vin}
N 10 90 10 140 {lab=vim}
N 0 140 10 140 {lab=vim}
N 630 -0 630 50 {lab=vop}
N 630 -0 650 0 {lab=vop}
N 630 90 630 130 {lab=vom}
N 630 130 650 130 {lab=vom}
C {vcvs.sym} 150 70 0 0 {name=E1 value=1000}
C {vcvs.sym} 590 70 2 0 {name=E2 value=1000}
C {iopin.sym} 0 140 2 0 {name=p1 lab=vim}
C {iopin.sym} 0 0 2 0 {name=p2 lab=vin}
C {iopin.sym} 650 130 0 0 {name=p3 lab=vom}
C {iopin.sym} 650 0 0 0 {name=p4 lab=vop}
C {res.sym} 360 0 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 430 70 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 430 140 0 0 {name=l1 lab=GND}
