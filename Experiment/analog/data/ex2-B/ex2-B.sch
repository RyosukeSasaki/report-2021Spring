<Qucs Schematic 0.0.22>
<Properties>
  <View=-154,199,892,1142,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex2-B.dat>
  <DataDisplay=ex2-B.dpl>
  <OpenDisplay=1>
  <Script=ex2-B.m>
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
  <C C1 1 210 570 -26 17 0 0 "0.102 uF" 1 "" 0 "neutral" 0>
  <.TR TR1 1 390 890 0 66 0 0 "lin" 1 "0.1" 1 "0.15 s" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vac V3 1 130 650 18 -26 0 1 "0.5" 1 "100 Hz" 0 "0" 0 "0" 0>
  <GND * 1 130 770 0 0 0 0>
  <Vdc V2 1 130 740 18 -26 0 1 "0.0 V" 1>
  <GND * 1 410 690 0 0 0 0>
  <R R1 1 420 430 -26 15 0 0 "0.979 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 610 590 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 730 640 0 0 0 0>
</Components>
<Wires>
  <480 590 510 590 "" 0 0 0 "">
  <240 570 350 570 "" 0 0 0 "">
  <130 570 180 570 "" 0 0 0 "">
  <130 570 130 620 "V_i" 130 560 25 "">
  <130 680 130 710 "" 0 0 0 "">
  <410 610 410 690 "" 0 0 0 "">
  <450 430 510 430 "" 0 0 0 "">
  <510 430 510 590 "" 0 0 0 "">
  <350 430 390 430 "" 0 0 0 "">
  <350 570 410 570 "" 0 0 0 "">
  <350 430 350 570 "" 0 0 0 "">
  <510 590 580 590 "V_o" 560 560 18 "">
  <640 590 730 590 "" 0 0 0 "">
  <730 590 730 640 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
