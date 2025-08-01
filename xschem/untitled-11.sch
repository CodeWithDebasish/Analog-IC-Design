v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -820 400 -420 {flags=graph
y1=0.4
y2=2.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0789149e-07
x2=1.1078917e-06
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
N -950 90 -950 130 {lab=GND}
N -950 -10 -950 30 {lab=vnmic}
N -950 -10 -860 -10 {lab=vnmic}
N -800 -10 -730 -10 {lab=vn1}
N -670 -10 -620 -10 {lab=vn2}
N -380 360 -380 400 {lab=GND}
N -520 -180 -520 -10 {lab=virt}
N -520 -250 -470 -250 {lab=virt}
N -520 -180 -470 -180 {lab=virt}
N -340 -180 -340 20 {lab=vout}
N -580 410 -580 450 {lab=GND}
N -340 20 -210 20 {lab=vout}
N -210 110 -210 150 {lab=GND}
N -210 20 -210 50 {lab=vout}
N -520 -10 -500 -10 {lab=virt}
N -410 -250 -340 -250 {lab=vout}
N -410 -180 -340 -180 {lab=vout}
N -370 20 -340 20 {lab=vout}
N -580 320 -580 350 {lab=#net1}
N -580 320 -510 320 {lab=#net1}
N -560 -10 -520 -10 {lab=virt}
N -520 -250 -520 -180 {lab=virt}
N -340 -250 -340 -180 {lab=vout}
N -270 -150 -270 -130 {lab=AVDD}
N -460 -150 -270 -150 {lab=AVDD}
N -460 -150 -460 -40 {lab=AVDD}
N -430 -150 -430 -120 {lab=AVDD}
N -430 -60 -430 -40 {lab=vib5u}
N -270 -70 -270 -50 {lab=GND}
N -370 20 -370 70 {lab=vout}
N -370 70 -270 70 {lab=vout}
N -270 70 -230 220 {lab=vout}
N -460 -40 -430 60 {lab=AVDD}
N -430 -40 -380 100 {lab=vib5u}
N -510 130 -500 -10 {lab=virt}
C {vsource.sym} -950 60 0 0 {name=Vmic value="0 AC 1 sin(0 100m 1e3 0 0 0)" savecurrent=false}
C {res.sym} -830 -10 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -700 -10 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -950 130 0 0 {name=l1 lab=GND}
C {res.sym} -590 -10 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -380 400 0 0 {name=l2 lab=GND}
C {res.sym} -440 -180 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -440 -250 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -580 380 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -580 450 0 0 {name=l3 lab=GND}
C {capa.sym} -210 80 0 0 {name=C3
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -210 150 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -900 -10 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -750 -10 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -630 -10 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -520 -30 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} -270 20 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -1200 -690 0 0 {name=COMMANDS
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
C {vsource.sym} -270 -100 0 0 {name=Vcc value="1.8" savecurrent=false}
C {isource.sym} -430 -90 0 0 {name=I0 value=5u}
C {gnd.sym} -270 -50 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -430 -50 0 0 {name=p5 sig_type=std_logic lab=vib5u}
C {lab_wire.sym} -290 -150 0 0 {name=p7 sig_type=std_logic lab=AVDD}
C {devices/code.sym} -690 -680 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {op_nmos.sym} 120 320 0 0 {name=x1}
