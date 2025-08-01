v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1430 -610 2230 -210 {flags=graph
y1=0.4
y2=2.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.774355e-07
x2=7.2256481e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vdb(vout)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=ac
rawfile=$netlist_dir/micTest_opa.raw}
N -710 -200 -590 -200 {lab=virt}
N -900 -200 -770 -200 {lab=vn2}
N -1040 -200 -960 -200 {lab=vn1}
N -1160 -200 -1100 -200 {lab=vnmic}
N -1160 -200 -1160 -130 {lab=vnmic}
N -1160 -70 -1160 -40 {lab=GND}
N -650 -10 -590 -10 {lab=#net1}
N -650 -10 -650 60 {lab=#net1}
N -650 120 -650 150 {lab=GND}
N -460 30 -460 60 {lab=GND}
N -660 -450 -590 -450 {lab=virt}
N -660 -450 -660 -320 {lab=virt}
N -660 -320 -660 -200 {lab=virt}
N -660 -390 -590 -390 {lab=virt}
N -510 -320 -510 -270 {lab=AVDD}
N -510 -320 -360 -320 {lab=AVDD}
N -460 -280 -460 -230 {lab=vib5u}
N -460 -280 -360 -280 {lab=vib5u}
N -360 -320 -140 -320 {lab=AVDD}
N -360 -280 -150 -280 {lab=vib5u}
N -310 -110 10 -110 {lab=vib5u}
N -530 -450 -150 -450 {lab=vib5u}
N -150 -280 -70 -280 {lab=vib5u}
N -140 -320 -70 -320 {lab=AVDD}
N 10 -110 10 0 {lab=vib5u}
N 10 60 10 90 {lab=GND}
N -70 -280 -0 -280 {lab=vib5u}
N -0 -350 -0 -280 {lab=vib5u}
N -70 -450 -70 -320 {lab=AVDD}
N -70 -450 110 -450 {lab=AVDD}
N 0 -450 -0 -410 {lab=AVDD}
N 110 -450 110 -380 {lab=AVDD}
N 110 -320 110 -290 {lab=GND}
N -530 -390 -150 -390 {lab=vib5u}
N -150 -450 -150 -110 {lab=vib5u}
C {op_nmos.sym} 40 -10 0 0 {name=x1}
C {res.sym} -740 -200 1 0 {name=R1
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -930 -200 1 0 {name=C1
m=4.7u
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -1070 -200 1 0 {name=R2
value=380
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1160 -100 0 0 {name=Vmic value="0 AC 1 sin(0 100m 1e3 0 0 0)" savecurrent=false}
C {gnd.sym} -1160 -40 0 0 {name=l1 lab=GND}
C {vsource.sym} -650 90 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -650 150 0 0 {name=l2 lab=GND}
C {gnd.sym} -460 60 0 0 {name=l3 lab=GND}
C {res.sym} -560 -390 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -560 -450 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 10 20 2 1 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 10 90 0 0 {name=l4 lab=GND}
C {isource.sym} 0 -380 0 0 {name=I0 value=5u}
C {vsource.sym} 110 -350 0 0 {name=V3 value=3 savecurrent=false}
C {gnd.sym} 110 -290 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -70 -430 0 0 {name=p1 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 0 -310 0 0 {name=p2 sig_type=std_logic lab=vib5u}
C {lab_wire.sym} 10 -110 0 0 {name=p3 sig_type=std_logic lab=vout}
C {lab_wire.sym} -1150 -200 0 0 {name=p4 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -1000 -200 0 0 {name=p5 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -840 -200 0 0 {name=p6 sig_type=std_logic lab=vn2}
C {devices/code.sym} -1040 -450 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 380 -540 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
  save all
  op
  write micTest_opa.raw
  set appendwrite
  AC DEC 100 0.1 10e6
  write micTest_opa.raw
  **
  MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
  LET vm3db = gain_db - 3.0
  print vm3db
  MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
  MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
  **MEAS AC fmid  WHEN vdb(vout)=gain_db
  **Phase Measurement
  LET phase_deg = cph(vout)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  **MEAS AC phase_mid  FIND phase_deg AT=fmid
  ** MEAS fero fpole using phase
  **LET phase_zero_ph = phase_mid-45
  **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  **
  TRAN 1u 6m
  MEAS TRAN voutpp PP v(vout) FROM=1m TO=4m
  MEAS TRAN vinpp PP v(vnmic) FROM=1m TO=4m
  LET gaintran=voutpp/vinpp
  print gaintran
  FOURIER 1k v(vout)
  plot v(vout)
  plot (vnmic)
  
.ENDC
"}
C {lab_wire.sym} -660 -230 0 0 {name=p7 sig_type=std_logic lab=virt}
