v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -690 -110 -590 -110 {lab=vin}
N -690 -70 -590 -70 {lab=vim}
N -550 -160 -550 -120 {lab=#net1}
N -550 -160 -460 -160 {lab=#net1}
N -550 -60 -550 -20 {lab=#net2}
N -550 -20 -460 -20 {lab=#net2}
N -460 -160 -370 -160 {lab=#net1}
N -310 -160 -270 -160 {lab=#net3}
N -270 -160 -270 -120 {lab=#net3}
N -270 -60 -270 -20 {lab=#net2}
N -460 -20 -270 -20 {lab=#net2}
N -270 -160 -170 -160 {lab=#net3}
N -170 -160 -170 -120 {lab=#net3}
N -170 -120 -110 -120 {lab=#net3}
N -270 -20 -170 -20 {lab=#net2}
N -170 -60 -170 -20 {lab=#net2}
N -170 -60 -110 -60 {lab=#net2}
N -690 -160 -690 -110 {lab=vin}
N -700 -160 -690 -160 {lab=vin}
N -690 -70 -690 -20 {lab=vim}
N -700 -20 -690 -20 {lab=vim}
N -70 -160 -70 -110 {lab=vop}
N -70 -160 -50 -160 {lab=vop}
N -70 -70 -70 -30 {lab=vom}
N -70 -30 -50 -30 {lab=vom}
C {vcvs.sym} -550 -90 0 0 {name=E1 value=1000}
C {vcvs.sym} -110 -90 2 0 {name=E2 value=1000}
C {iopin.sym} -700 -20 2 0 {name=p1 lab=vim}
C {iopin.sym} -700 -160 2 0 {name=p2 lab=vin}
C {iopin.sym} -50 -30 0 0 {name=p3 lab=vom}
C {iopin.sym} -50 -160 0 0 {name=p4 lab=vop}
C {res.sym} -340 -160 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -270 -90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -270 -20 0 0 {name=l1 lab=GND}
