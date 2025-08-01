v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -10 -180 20 {lab=vgds}
N -180 80 -180 100 {lab=GND}
N -180 100 -90 100 {lab=GND}
N -90 100 20 100 {lab=GND}
N 20 80 20 100 {lab=GND}
N -90 -50 -90 -40 {lab=vgds}
N -90 20 -90 100 {lab=GND}
N -90 -10 20 -10 {lab=GND}
N 20 -10 20 80 {lab=GND}
N -90 -100 -90 -50 {lab=vgds}
N -180 -100 -90 -100 {lab=vgds}
N -150 -10 -130 -10 {lab=vgds}
N -150 -100 -150 -10 {lab=vgds}
N -180 -100 -180 -0 {lab=vgds}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -180 50 0 0 {name=Vds value=1 savecurrent=false
}
C {vsource.sym} -90 60 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -90 100 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -180 -100 0 0 {name=p1 sig_type=std_logic lab=vgds}
C {simulator_commands_shown.sym} 110 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
save @Vds[i]
dc Vds 0 1.8 0.05 Vsb 0 0.5 0.1
plot abs(@Vds[i])
plot sqrt(2*abs(@Vds[i]))
plot log(abs(@Vds[i]))
.endc
"}
C {devices/code.sym} 230 90 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
