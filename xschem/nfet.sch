v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -10 -90 20 {lab=vg}
N -90 -10 -40 -10 {lab=vg}
N -90 80 -90 100 {lab=GND}
N -90 100 -0 100 {lab=GND}
N 0 100 110 100 {lab=GND}
N 110 80 110 100 {lab=GND}
N -0 -50 0 -40 {lab=vd}
N 0 -50 110 -50 {lab=vd}
N 110 -50 110 20 {lab=vd}
N 0 20 -0 100 {lab=GND}
N -0 -10 80 -10 {lab=GND}
N 80 -10 80 40 {lab=GND}
N 0 50 80 40 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -90 50 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 110 50 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} 0 100 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -80 -10 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 0 -50 0 0 {name=p2 sig_type=std_logic lab=vd}
C {simulator_commands_shown.sym} 170 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL 
  OP
  DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.1 
  

.ENDC
"}
C {devices/code.sym} 320 90 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
