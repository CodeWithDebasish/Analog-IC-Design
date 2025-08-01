v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 20 140 60 {lab=#net1}
N 140 20 200 20 {lab=#net1}
N 260 20 310 20 {lab=#net2}
N 310 20 310 60 {lab=#net2}
C {vsource.sym} 140 90 0 0 {name=V1 value=3 savecurrent=false}
C {res.sym} 230 20 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 140 120 0 0 {name=l1 lab=GND}
C {gnd.sym} 310 120 0 0 {name=l2 lab=GND}
C {capa.sym} 310 90 2 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
