<Qucs Schematic 0.0.19>
<Properties>
  <View=-154,253,1264,1164,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex3-A-02.dat>
  <DataDisplay=ex3-A-02.dpl>
  <OpenDisplay=1>
  <Script=ex3-A-02.m>
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
  <GND * 1 350 780 0 0 0 0>
  <Eqn Eqn1 1 1030 390 -34 16 0 0 "Vi_pp=max(Vi.Vt)-min(Vi.Vt)" 1 "yes" 0>
  <Eqn Eqn2 1 1030 510 -34 16 0 0 "Vo_pp=max(Vo.Vt)-min(Vo.Vt)" 1 "yes" 0>
  <Eqn Eqn3 1 1030 640 -34 16 0 0 "Ti_p=xvalue(Vi.Vt,max(Vi.Vt))" 1 "yes" 0>
  <Eqn Eqn4 1 1030 760 -34 16 0 0 "To_p=xvalue(Vo.Vt,max(Vo.Vt))" 1 "yes" 0>
  <.TR TR1 1 390 890 0 66 0 0 "lin" 1 "0.010" 1 "0.01008" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vac V1 1 -30 740 18 -26 0 1 "0.5 V" 1 "10000 Hz" 1 "0" 0 "0" 0>
  <GND * 1 -30 830 0 0 0 0>
  <R R1 1 180 570 -26 15 0 0 "2.003 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R4 1 400 440 -26 15 0 0 "2.009 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 30 570 -26 17 0 0 "0.102 uF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <840 590 840 640 "" 0 0 0 "">
  <700 590 840 590 "" 0 0 0 "">
  <350 700 350 780 "" 0 0 0 "">
  <350 700 410 700 "" 0 0 0 "">
  <410 610 410 700 "" 0 0 0 "">
  <580 590 640 590 "" 0 0 0 "">
  <320 570 410 570 "" 0 0 0 "">
  <210 570 320 570 "" 0 0 0 "">
  <320 440 320 570 "" 0 0 0 "">
  <320 440 370 440 "" 0 0 0 "">
  <580 440 580 590 "" 0 0 0 "">
  <430 440 580 440 "" 0 0 0 "">
  <-30 770 -30 830 "" 0 0 0 "">
  <60 570 150 570 "" 0 0 0 "">
  <-30 570 0 570 "" 0 0 0 "">
  <-30 570 -30 710 "Vi" 10 550 11 "">
  <480 590 580 590 "Vo" 600 560 87 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
