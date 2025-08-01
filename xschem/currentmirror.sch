v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -380 -90 -380 10 {lab=#net1}
N -190 -90 -190 -20 {lab=#net1}
N -380 -90 -190 -90 {lab=#net1}
N -380 70 -380 130 {lab=GND}
N -380 130 -190 130 {lab=GND}
N -300 10 -190 10 {lab=GND}
N -300 10 -300 130 {lab=GND}
N -190 40 -190 130 {lab=GND}
N -150 10 -50 10 {lab=#net1}
N -190 -90 -120 -90 {lab=#net1}
N -120 -90 -120 10 {lab=#net1}
N -10 40 -10 120 {lab=GND}
N -190 130 -10 130 {lab=GND}
N -10 120 -10 130 {lab=GND}
N -10 -90 -10 -20 {lab=#net2}
N -10 -90 160 -90 {lab=#net2}
N 160 -90 160 0 {lab=#net2}
N -10 10 90 10 {lab=GND}
N 90 10 90 130 {lab=GND}
N 160 60 160 130 {lab=GND}
N -10 130 90 130 {lab=GND}
N 90 130 160 130 {lab=GND}
C {isource.sym} -380 40 2 0 {name=I0 value=50u}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -170 10 0 1 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 160 30 0 0 {name=Vds value= "1 AC 1" savecurrent=false}
C {devices/code.sym} 270 70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -740 -100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL 
   OP
   DC vds 0 1.8 0.05 
   PLOT abs (vds#branch)
   AC DEC 100 100 1000
   PLOT "1/vm(vds#branch)"
.ENDC
"}
C {gnd.sym} -190 130 0 0 {name=l1 lab=GND}
