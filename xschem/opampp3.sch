v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1690 -660 -1630 -660 {lab=Vin}
N -1570 -660 -1530 -660 {lab=n1}
N -1410 -660 -1330 -660 {lab=Virt}
N -1300 -770 -1290 -770 {lab=Vout}
N -1390 -770 -1360 -770 {lab=Virt}
N -1390 -770 -1390 -660 {lab=Virt}
N -1290 -770 -1120 -770 {lab=Vout}
N -1120 -770 -1120 -720 {lab=Vout}
N -1690 -660 -1690 -410 {lab=Vin}
N -1690 -350 -1370 -350 {lab=GND}
N -1370 -350 -1190 -350 {lab=GND}
N -1370 -490 -1370 -410 {lab=Vcm}
N -1370 -490 -1310 -490 {lab=Vcm}
N -1330 -660 -1330 -570 {lab=Virt}
N -1530 -660 -1470 -660 {lab=n1}
N -1310 -490 -1310 -440 {lab=Vcm}
N -1310 -440 -1290 -440 {lab=Vcm}
N -1190 -370 -1190 -350 {lab=GND}
N -1190 -370 -980 -370 {lab=GND}
N -1120 -720 -730 -720 {lab=Vout}
N -730 -720 -730 -450 {lab=Vout}
N -730 -440 -610 -440 {lab=Vout}
N -730 -450 -730 -440 {lab=Vout}
N -1290 -440 -810 -430 {lab=Vcm}
N -800 -430 -800 -330 {lab=Vcm}
N -820 -430 -800 -430 {lab=Vcm}
N -1330 -570 -980 -570 {lab=Virt}
C {vsource.sym} -1690 -380 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} -1440 -660 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1600 -660 1 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -1330 -770 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1370 -380 0 0 {name=V2 value=1.5 
savecurrent=false}
C {gnd.sym} -1690 -350 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -1660 -660 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -1530 -660 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} -1390 -770 0 0 {name=p3 sig_type=std_logic lab=Virt}
C {lab_wire.sym} -730 -720 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {lab_wire.sym} -1370 -490 0 0 {name=p5 sig_type=std_logic lab=Vcm}
C {simulator_commands_shown.sym} -560 -750 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
   op
   set appendwrite
   AC DEC 100 0.1 10Meg

   write micTest.raw

   * Measure max gain in dB at Vout
   MEAS AC gain_db MAX vdb(vop) FROM=0.1 TO=10Meg

   * Calculate -3dB level
   LET vm3db = gain_db - 3.0
   print vm3db

   * Find frequencies where gain crosses -3dB level (rise and fall)
   MEAS AC fzero WHEN vdb(vop)=vm3db RISE=1
   MEAS AC fpole WHEN vdb(vop)=vm3db FALL=1

   * Calculate phase in degrees (use Vout node exactly as defined in netlist)
   LET phase_deg = cph(vop)*180/PI

   * Measure phase at fzero frequency
   MEAS AC phase_zero FIND phase_deg AT = fzero

   * Plot gain in dB
   plot vdb(vop)

   * Plot phase in degrees
   plot phase_deg

.ENDC
* ngspice commands"}
C {opamp4.sym} -200 -290 0 0 {name=x1}
