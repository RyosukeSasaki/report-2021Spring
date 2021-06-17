<Qucs Schematic 0.0.22>
<Properties>
  <View=-154,199,1264,1104,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex3-A-01.dat>
  <DataDisplay=ex3-A-01.dpl>
  <OpenDisplay=1>
  <Script=ex3-A-01.m>
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
  <GND * 1 840 640 0 0 0 0>
  <R R3 1 670 590 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <OpAmp OP1 1 440 590 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <Eqn Eqn1 1 1030 390 -34 16 0 0 "Vi_pp=max(Vi.Vt)-min(Vi.Vt)" 1 "yes" 0>
  <Eqn Eqn2 1 1030 510 -34 16 0 0 "Vo_pp=max(Vo.Vt)-min(Vo.Vt)" 1 "yes" 0>
  <Eqn Eqn3 1 1030 640 -34 16 0 0 "Ti_p=xvalue(Vi.Vt,max(Vi.Vt))" 1 "yes" 0>
  <Eqn Eqn4 1 1030 760 -34 16 0 0 "To_p=xvalue(Vo.Vt,max(Vo.Vt))" 1 "yes" 0>
  <.TR TR1 1 390 890 0 66 0 0 "lin" 1 "0.02000" 1 "0.02011" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R2 1 440 440 -26 15 0 0 "2.005 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 440 370 -26 17 0 0 "0.103 uF" 1 "" 0 "neutral" 0>
  <R R1 1 280 570 -26 15 0 0 "2.036 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 130 650 18 -26 0 1 "0.5 V" 1 "10000 Hz" 1 "0" 0 "0" 0>
  <GND * 1 370 730 0 0 0 0>
  <GND * 1 130 730 0 0 0 0>
</Components>
<Wires>
  <840 590 840 640 "" 0 0 0 "">
  <700 590 840 590 "" 0 0 0 "">
  <480 590 530 590 "" 0 0 0 "">
  <470 440 530 440 "" 0 0 0 "">
  <530 370 530 440 "" 0 0 0 "">
  <470 370 530 370 "" 0 0 0 "">
  <530 590 640 590 "Vo" 600 560 39 "">
  <530 440 530 590 "" 0 0 0 "">
  <360 370 410 370 "" 0 0 0 "">
  <360 440 410 440 "" 0 0 0 "">
  <360 370 360 440 "" 0 0 0 "">
  <310 570 360 570 "" 0 0 0 "">
  <130 570 250 570 "" 0 0 0 "">
  <130 570 130 620 "Vi" 160 560 21 "">
  <360 570 410 570 "" 0 0 0 "">
  <360 440 360 570 "" 0 0 0 "">
  <370 610 410 610 "" 0 0 0 "">
  <370 610 370 730 "" 0 0 0 "">
  <130 680 130 730 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
