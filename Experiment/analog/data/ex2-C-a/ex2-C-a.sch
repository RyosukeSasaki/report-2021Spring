<Qucs Schematic 0.0.22>
<Properties>
  <View=0,0,1094,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex2-C-a.dat>
  <DataDisplay=ex2-C-a.dpl>
  <OpenDisplay=1>
  <Script=ex2-C-a.m>
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
  <GND * 1 630 290 0 0 0 0>
  <GND * 1 630 290 0 0 0 0>
  <GND * 1 480 450 0 0 0 0>
  <C C1 1 480 420 17 -26 0 1 "0.099 uF" 1 "" 0 "neutral" 0>
  <GND * 1 80 410 0 0 0 0>
  <R R3 1 210 290 -26 15 0 0 "0.979 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 360 290 -26 15 0 0 "1.005 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 80 350 18 -26 0 1 "0.5 V" 1 "810.25Hz" 1 "0" 0 "0" 0>
  <Eqn Eqn1 1 860 230 -34 16 0 0 "Vi_pp=max(Vi.Vt)-min(Vi.Vt)" 1 "yes" 0>
  <Eqn Eqn2 1 860 350 -34 16 0 0 "Vo_pp=max(Vo.Vt)-min(Vo.Vt)" 1 "yes" 0>
  <.TR TR1 1 390 610 0 65 0 0 "lin" 1 "0.1 s" 1 "0.105 s" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn3 1 860 480 -34 16 0 0 "Ti_p=xvalue(Vi.Vt,max(Vi.Vt))" 1 "yes" 0>
  <Eqn Eqn4 1 860 600 -34 16 0 0 "To_p=xvalue(Vo.Vt,max(Vo.Vt))" 1 "yes" 0>
</Components>
<Wires>
  <480 290 570 290 "Vo" 540 260 33 "">
  <480 290 480 390 "" 0 0 0 "">
  <240 290 330 290 "" 0 0 0 "">
  <80 380 80 410 "" 0 0 0 "">
  <80 290 180 290 "Vi" 130 260 25 "">
  <80 290 80 320 "" 0 0 0 "">
  <390 290 480 290 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
