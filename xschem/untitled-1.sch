v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -720 10 -660 10 {lab=#net1}
N -290 -90 -210 -90 {lab=#net2}
N -170 -200 -170 -140 {lab=#net3}
N -180 -200 -170 -200 {lab=#net3}
N -270 -200 -240 -200 {lab=#net2}
N -270 -200 -270 -90 {lab=#net2}
N -270 -280 -240 -280 {lab=#net2}
N -270 -280 -270 -200 {lab=#net2}
N -180 -280 -170 -280 {lab=#net3}
N -170 -280 -170 -200 {lab=#net3}
N -170 -200 0 -200 {lab=#net3}
N 0 -200 0 -150 {lab=#net3}
N 0 -90 0 -60 {lab=GND}
N -240 -130 -210 -130 {lab=#net4}
N -240 -130 -240 -50 {lab=#net4}
N -720 10 -720 30 {lab=#net1}
N -660 10 -620 10 {lab=#net1}
N -720 30 -720 120 {lab=#net1}
N -620 130 -620 180 {lab=GND}
C {vsource.sym} -720 150 0 0 {name=V1 value=3 savecurrent=false}
C {res.sym} -620 40 2 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} -620 100 2 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -400 -270 1 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} -410 0 0 0 {name=E1 value=1000}
C {res.sym} -210 -200 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -210 -280 1 0 {name=C1
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 0 -120 2 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 0 -70 0 0 {name=l1 lab=GND}
C {gnd.sym} -170 -80 0 0 {name=l2 lab=GND}
C {vsource.sym} -240 -20 0 0 {name=V2 value=1.5 
savecurrent=false}
C {gnd.sym} -240 10 0 0 {name=l3 lab=GND}
C {gnd.sym} -720 180 0 0 {name=l4 lab=GND}
C {gnd.sym} -620 180 0 0 {name=l5 lab=GND}
