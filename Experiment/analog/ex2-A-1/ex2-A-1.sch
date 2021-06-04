<Qucs Schematic 0.0.19>
<Properties>
  <View=-154,199,892,1142,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex2-A.dat>
  <DataDisplay=ex2-A.dpl>
  <OpenDisplay=1>
  <Script=ex2-A.m>
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
  <R R1 1 180 570 -26 15 0 0 "9.98 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 100 890 0 0 0 0>
  <Vrect V1 1 100 730 18 -26 0 1 "1 V" 1 "6.25 ms" 1 "6.25 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <Vdc V2 1 100 860 18 -26 0 1 "-0.3 V" 1>
  <C C1 1 400 320 -26 17 0 0 "0.103 uF" 1 "" 0 "neutral" 0>
  <.TR TR1 1 390 890 0 66 0 0 "lin" 1 "0" 1 "0.5 s" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <840 590 840 640 "" 0 0 0 "">
  <700 590 840 590 "" 0 0 0 "">
  <430 320 580 320 "" 0 0 0 "">
  <480 590 580 590 "V_o" 560 560 48 "">
  <350 700 350 780 "" 0 0 0 "">
  <350 700 410 700 "" 0 0 0 "">
  <410 610 410 700 "" 0 0 0 "">
  <580 590 640 590 "" 0 0 0 "">
  <580 320 580 590 "" 0 0 0 "">
  <320 320 370 320 "" 0 0 0 "">
  <320 570 410 570 "" 0 0 0 "">
  <320 320 320 570 "" 0 0 0 "">
  <210 570 320 570 "" 0 0 0 "">
  <100 560 100 570 "" 0 0 0 "">
  <100 570 150 570 "" 0 0 0 "">
  <100 570 100 700 "V_i" 130 560 25 "">
  <100 760 100 830 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
