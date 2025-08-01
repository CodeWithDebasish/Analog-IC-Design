v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -710 -200 -590 -200 {lab=#net1}
N -900 -200 -770 -200 {lab=#net2}
N -1040 -200 -960 -200 {lab=#net3}
N -1160 -200 -1100 -200 {lab=#net4}
N -1160 -200 -1160 -130 {lab=#net4}
N -1160 -70 -1160 -40 {lab=GND}
N -650 -10 -590 -10 {lab=#net5}
N -650 -10 -650 60 {lab=#net5}
N -650 120 -650 150 {lab=GND}
N -460 30 -460 60 {lab=GND}
N -660 -450 -590 -450 {lab=#net1}
N -660 -450 -660 -320 {lab=#net1}
N -660 -320 -660 -200 {lab=#net1}
N -660 -390 -590 -390 {lab=#net1}
N -510 -320 -510 -270 {lab=#net6}
N -510 -320 -360 -320 {lab=#net6}
N -460 -280 -460 -230 {lab=#net7}
N -460 -280 -360 -280 {lab=#net7}
N -360 -320 -140 -320 {lab=#net6}
N -360 -280 -150 -280 {lab=#net7}
N -310 -110 10 -110 {lab=#net8}
N -530 -450 -150 -450 {lab=#net8}
N -530 -390 -150 -390 {lab=#net9}
N -150 -450 -140 -110 {lab=#net8}
N -150 -280 -70 -280 {lab=#net7}
N -140 -320 -70 -320 {lab=#net6}
N 10 -110 10 0 {lab=#net8}
N 10 60 10 90 {lab=GND}
N -70 -280 -0 -280 {lab=#net7}
N -0 -350 -0 -280 {lab=#net7}
N -70 -450 -70 -320 {lab=#net6}
N -70 -450 110 -450 {lab=#net6}
N 0 -450 -0 -410 {lab=#net6}
N 110 -450 110 -380 {lab=#net5}
N 110 -320 110 -290 {lab=GND}
C {op_nmos.sym} 40 -10 0 0 {name=x1}
C {res.sym} -740 -200 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -930 -200 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -1070 -200 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1160 -100 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -1160 -40 0 0 {name=l1 lab=GND}
C {vsource.sym} -650 90 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -650 150 0 0 {name=l2 lab=GND}
C {gnd.sym} -460 60 0 0 {name=l3 lab=GND}
C {res.sym} -560 -390 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -560 -450 1 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 10 30 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 10 90 0 0 {name=l4 lab=GND}
C {isource.sym} 0 -380 0 0 {name=I0 value=1m}
C {vsource.sym} 110 -350 0 0 {name=V3 value=3 savecurrent=false}
C {gnd.sym} 110 -290 0 0 {name=l5 lab=GND}
