<Qucs Schematic 0.0.19>
<Properties>
  <View=6,19,892,1275,1,0,140>
  <Grid=10,10,1>
  <DataSet=inv_amp.dat>
  <DataDisplay=inv_amp.dpl>
  <OpenDisplay=1>
  <Script=inv_amp.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <OpAmp OP1 1 440 590 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <.TR TR1 1 390 960 0 66 0 0 "lin" 1 "0" 1 "0.01 ms" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R1 1 280 570 -26 15 0 0 "0.999 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 410 690 0 0 0 0>
  <R R3 1 630 590 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 740 690 0 0 0 0>
  <R R2 1 440 440 -26 15 0 0 "334.4 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 160 660 18 -26 0 1 "0.5V" 1 "100kHz" 1 "0" 0 "0" 0>
  <GND * 1 160 690 0 0 0 0>
</Components>
<Wires>
  <480 590 550 590 "V_o" 490 560 48 "">
  <360 570 410 570 "V_d" 380 580 30 "">
  <310 570 360 570 "" 0 0 0 "">
  <410 610 410 690 "" 0 0 0 "">
  <550 590 600 590 "" 0 0 0 "">
  <660 590 740 590 "" 0 0 0 "">
  <740 590 740 690 "" 0 0 0 "">
  <550 440 550 590 "" 0 0 0 "">
  <470 440 550 440 "" 0 0 0 "">
  <360 440 360 570 "" 0 0 0 "">
  <360 440 410 440 "" 0 0 0 "">
  <160 570 250 570 "" 0 0 0 "">
  <160 570 160 630 "V_i" 120 570 25 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
