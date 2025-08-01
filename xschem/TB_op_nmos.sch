v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -780 -90 -660 -90 {lab=vindiff}
N -780 -50 -660 -50 {lab=GND}
N -780 -120 -780 -90 {lab=vindiff}
N -780 -50 -780 -0 {lab=GND}
N 210 -170 240 -170 {lab=vo}
N 240 -90 240 -60 {lab=GND}
N 240 -110 240 -90 {lab=GND}
N 60 -30 60 -0 {lab=GND}
N -940 70 -940 120 {lab=GND}
N -940 -120 -940 10 {lab=vindiff}
N -940 -120 -780 -120 {lab=vindiff}
N -780 -120 -340 -120 {lab=vindiff}
N -340 -120 -340 -90 {lab=vindiff}
N -300 -140 -300 -100 {lab=vip}
N -300 -140 -120 -140 {lab=vip}
N -120 -140 -120 -70 {lab=vip}
N -120 -70 -70 -70 {lab=vip}
N -620 -40 -620 -0 {lab=vcm}
N -340 -50 -340 30 {lab=GND}
N -780 30 -340 30 {lab=GND}
N -780 0 -780 30 {lab=GND}
N -780 30 -780 120 {lab=GND}
N -300 -40 -300 60 {lab=vcm}
N -620 0 -620 60 {lab=vcm}
N -620 60 -300 60 {lab=vcm}
N -490 60 -490 90 {lab=vcm}
N -490 150 -490 170 {lab=GND}
N -620 -260 -70 -260 {lab=vim}
N -620 -260 -620 -100 {lab=vim}
N -420 -320 -420 -290 {lab=GND}
N 10 -550 10 -330 {lab=vdda}
N 60 -400 60 -290 {lab=#net1}
N 60 -550 60 -460 {lab=vdda}
N 10 -550 60 -550 {lab=vdda}
N -420 -550 10 -550 {lab=vdda}
N -420 -550 -420 -380 {lab=vdda}
C {op_nmos.sym} 560 -70 0 0 {name=x1}
C {vcvs.sym} -620 -70 0 0 {name=E1 value=-0.5}
C {vcvs.sym} -300 -70 0 0 {name=E2 value=0.5}
C {vsource.sym} -940 40 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -490 120 0 0 {name=Vcm value=0.9 savecurrent=false}
C {vsource.sym} -420 -350 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -940 120 0 0 {name=l1 lab=GND}
C {gnd.sym} -490 170 0 0 {name=l2 lab=GND}
C {gnd.sym} -420 -290 0 0 {name=l4 lab=GND}
C {gnd.sym} 60 0 0 0 {name=l5 lab=GND}
C {gnd.sym} 240 -60 0 0 {name=l6 lab=GND}
C {capa.sym} 240 -140 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -780 120 0 0 {name=l7 lab=GND}
C {isource.sym} 60 -430 0 0 {name=I0 value=5u}
C {devices/code.sym} -1060 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 330 -410 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
* ngspice commands
.temp 27
.control
save all
  save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
OP
write opamtest.raw
let m1id=@m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
let mtailid=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
let m1gm=@m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
let mtailgm=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]

let m5id=@m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
let m5gm=@m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]

let m11id=@m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[id]
let m11gm=@m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gm]

let m4id=@m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
let m4gm=@m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]

let m3id=@m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
let m3gm=@m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]

let m1gmid=m1gm/m1id
let mtailgmid=mtailgm/mtailid
let m5gmid=m5gm/m5id
let m11gmid=m11gm/m11id
let m4gmid=m4gm/m4id
let m3gmid=m3gm/m3id

print m1gmid
print mtailgmid
print m5gmid
print m11gmid
print m4gmid
print m3gmid
.endc
"}
C {lab_wire.sym} -850 -120 0 0 {name=p1 sig_type=std_logic lab=vindiff}
C {lab_wire.sym} -540 -260 0 0 {name=p2 sig_type=std_logic lab=vim}
C {lab_wire.sym} -130 -550 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {lab_wire.sym} -370 60 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} -220 -140 0 0 {name=p5 sig_type=std_logic lab=vip}
C {lab_wire.sym} 220 -170 0 0 {name=p6 sig_type=std_logic lab=vo}
