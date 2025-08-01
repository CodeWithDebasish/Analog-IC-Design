v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 140 50 140 {lab=Vin}
N 110 140 150 140 {lab=n1}
N 270 140 350 140 {lab=#net1}
N 390 30 390 90 {lab=Vout}
N 380 30 390 30 {lab=Vout}
N 290 30 320 30 {lab=#net1}
N 290 30 290 140 {lab=#net1}
N 290 -50 320 -50 {lab=#net1}
N 290 -50 290 30 {lab=#net1}
N 380 -50 390 -50 {lab=Vout}
N 390 -50 390 30 {lab=Vout}
N 390 30 560 30 {lab=Vout}
N 560 30 560 80 {lab=Vout}
N 560 140 560 170 {lab=GND}
N 320 100 350 100 {lab=#net2}
N 320 100 320 180 {lab=#net2}
C {vsource.sym} -10 170 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} 80 140 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 240 140 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} 180 140 1 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 390 120 0 0 {name=E1 value=1000}
C {res.sym} 350 30 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 350 -50 1 0 {name=C1
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 560 110 2 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 560 160 0 0 {name=l1 lab=GND}
C {gnd.sym} 390 150 0 0 {name=l2 lab=GND}
C {vsource.sym} 320 210 0 0 {name=V2 value=1.5 
savecurrent=false}
C {gnd.sym} 320 240 0 0 {name=l3 lab=GND}
C {gnd.sym} -10 200 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} 620 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
   op
   set appendwrite
   AC DEC 100 0.1 10Meg

   write micTest.raw

   * Measure max gain in dB at Vout
   MEAS AC gain_db MAX vdb(Vout) FROM=0.1 TO=10Meg

   * Calculate -3dB level
   LET vm3db = gain_db - 3.0
   print vm3db

   * Find frequencies where gain crosses -3dB level (rise and fall)
   MEAS AC fzero WHEN vdb(Vout)=vm3db RISE=1
   MEAS AC fpole WHEN vdb(Vout)=vm3db FALL=1

   * Calculate phase in degrees (use Vout node exactly as defined in netlist)
   LET phase_deg = cph(vout)*180/PI

   * Measure phase at fzero frequency
   MEAS AC phase_zero FIND phase_deg AT = fzero

   * Plot gain in dB
   plot vdb(Vout)

   * Plot phase in degrees
   plot phase_deg

.ENDC
* ngspice commands"}
C {lab_wire.sym} 20 140 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 130 140 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} 450 30 0 0 {name=p3 sig_type=std_logic lab=Vout}
