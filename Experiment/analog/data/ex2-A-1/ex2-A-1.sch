<Qucs Schematic 0.0.22>
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
  <R R3 1 670 590 -26 15 0 0 "100 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <OpAmp OP1 1 440 590 -26 -80 1 0 "1e6" 1 "15 V" 0>
  <.TR TR1 1 390 890 0 66 0 0 "lin" 1 "0" 1 "0.5 s" 1 "10001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <C C1 1 440 470 -26 -55 1 0 "0.103 uF" 1 "" 0 "neutral" 0>
  <R R1 1 300 570 -26 15 0 0 "9.98 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vrect V1 1 180 680 18 -26 0 1 "1 V" 1 "6.25 ms" 1 "6.25 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <GND * 1 180 800 0 0 0 0>
  <Vdc V2 1 180 770 18 -26 0 1 "-0.3 V" 1>
  <GND * 1 780 660 0 0 0 0>
  <GND * 1 410 740 0 0 0 0>
</Components>
<Wires>
  <480 590 520 590 "" 0 0 0 "">
  <370 570 410 570 "" 0 0 0 "">
  <520 590 640 590 "V_o" 560 560 8 "">
  <520 470 520 590 "" 0 0 0 "">
  <470 470 520 470 "" 0 0 0 "">
  <370 470 370 570 "" 0 0 0 "">
  <370 470 410 470 "" 0 0 0 "">
  <330 570 370 570 "" 0 0 0 "">
  <180 570 270 570 "" 0 0 0 "">
  <180 570 180 650 "V_i" 210 560 25 "">
  <180 710 180 740 "" 0 0 0 "">
  <700 590 780 590 "" 0 0 0 "">
  <780 590 780 660 "" 0 0 0 "">
  <410 610 410 740 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
