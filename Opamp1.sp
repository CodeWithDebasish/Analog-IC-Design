name=COMMANDS
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
* ngspice commands"
