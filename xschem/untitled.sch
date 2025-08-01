v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -60 60 -60 {lab=#net1}
N 120 -60 160 -60 {lab=#net2}
N 280 -60 360 -60 {lab=#net3}
N 400 -170 400 -110 {lab=#net4}
N 390 -170 400 -170 {lab=#net4}
N 300 -170 330 -170 {lab=#net3}
N 300 -170 300 -60 {lab=#net3}
N 300 -250 330 -250 {lab=#net3}
N 300 -250 300 -170 {lab=#net3}
N 390 -250 400 -250 {lab=#net4}
N 400 -250 400 -170 {lab=#net4}
N 400 -170 570 -170 {lab=#net4}
N 570 -170 570 -120 {lab=#net4}
N 570 -60 570 -30 {lab=GND}
N 330 -100 360 -100 {lab=#net5}
N 330 -100 330 -20 {lab=#net5}
C {vsource.sym} 0 -30 0 0 {name=V1 value=3 savecurrent=false}
C {res.sym} 90 -60 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 250 -60 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -60 1 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 400 -80 0 0 {name=E1 value=1000}
C {res.sym} 360 -170 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 360 -250 1 0 {name=C1
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 570 -90 2 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 570 -40 0 0 {name=l1 lab=GND}
C {gnd.sym} 400 -50 0 0 {name=l2 lab=GND}
C {vsource.sym} 330 10 0 0 {name=V2 value=1.5 
savecurrent=false}
C {gnd.sym} 330 40 0 0 {name=l3 lab=GND}
C {gnd.sym} 0 0 0 0 {name=l4 lab=GND}
