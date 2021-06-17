<Qucs Schematic 0.0.22>
<Properties>
  <View=0,0,1094,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex2-C-b.dat>
  <DataDisplay=ex2-C-b.dpl>
  <OpenDisplay=1>
  <Script=ex2-C-b.m>
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
  <R R2 1 600 290 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn1 1 860 230 -34 16 0 0 "Vi_pp=max(Vi.Vt)-min(Vi.Vt)" 1 "yes" 0>
  <Eqn Eqn2 1 860 350 -34 16 0 0 "Vo_pp=max(Vo.Vt)-min(Vo.Vt)" 1 "yes" 0>
  <Eqn Eqn3 1 860 480 -34 16 0 0 "Ti_p=xvalue(Vi.Vt,max(Vi.Vt))" 1 "yes" 0>
  <Eqn Eqn4 1 860 600 -34 16 0 0 "To_p=xvalue(Vo.Vt,max(Vo.Vt))" 1 "yes" 0>
  <.TR TR1 1 390 610 0 65 0 0 "lin" 1 "0.1 s" 1 "0.104 s" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R1 1 360 290 -26 15 0 0 "1.991 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 480 370 17 -26 0 1 "0.099 uF" 1 "" 0 "neutral" 0>
  <Vac V1 1 480 470 18 -26 0 1 "0.5 V" 1 "807.48 Hz" 1 "0" 0 "0" 0>
  <GND * 1 480 540 0 0 0 0>
  <GND * 1 710 350 0 0 0 0>
  <GND * 1 280 350 0 0 0 0>
</Components>
<Wires>
  <480 290 570 290 "Vo" 540 260 33 "">
  <390 290 480 290 "" 0 0 0 "">
  <480 290 480 340 "" 0 0 0 "">
  <480 400 480 440 "Vi" 530 390 20 "">
  <480 500 480 540 "" 0 0 0 "">
  <630 290 710 290 "" 0 0 0 "">
  <710 290 710 350 "" 0 0 0 "">
  <280 290 330 290 "" 0 0 0 "">
  <280 290 280 350 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
