v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -500 -130 -500 -100 {lab=vgds}
N -500 -40 -500 -20 {lab=GND}
N -500 -20 -410 -20 {lab=GND}
N -410 -20 -300 -20 {lab=GND}
N -300 -40 -300 -20 {lab=GND}
N -410 -170 -410 -160 {lab=vgds}
N -410 -130 -300 -130 {lab=GND}
N -300 -130 -300 -40 {lab=GND}
N -410 -220 -410 -170 {lab=vgds}
N -500 -220 -410 -220 {lab=vgds}
N -470 -130 -450 -130 {lab=vgds}
N -470 -220 -470 -130 {lab=vgds}
N -500 -220 -500 -120 {lab=vgds}
N -410 -100 -410 -90 {lab=#net1}
N -410 -30 -410 -20 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -430 -130 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -500 -70 0 0 {name=Vds value=1 savecurrent=false
}
C {vsource.sym} -410 -60 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -410 -20 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -500 -220 0 0 {name=p1 sig_type=std_logic lab=vgds}
C {simulator_commands_shown.sym} -210 -290 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL 
OP
DC Vds 0 1.8 0.05 TEMP -40 120 20
**Vsb 0 0.5 0.1 
plot abs(vds#branch)
plot sqrt(2*abs(vds#branch))
plot log(abs(vds#branch))
.ENDC
"}
C {devices/code.sym} -90 -30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
